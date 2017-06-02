require 'rubyXL'
require 'mysql2'
workbook = RubyXL::Parser.parse("../files/sample.xlsx")
worksheet = workbook[0]
row_count = 0;
xldata_array = Array.new
worksheet.each { |row|
  xldata_array << row.cells.map  { |cell|
    cell.value
  } if row_count > 0
  row_count += 1
}
p xldata_array

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "synerzip", :database => "ruby_test")
xldata_array.each do |userdata|
  insert_query = "INSERT INTO user_data (username, class, subject) values('#{userdata[0]}', '#{userdata[1]}', '#{userdata[2]}')"
  client.query(insert_query)
end