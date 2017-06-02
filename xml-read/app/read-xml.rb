# Refered from https://launchschool.com/books/ruby/read/files#fileformats
require 'nokogiri'
#require 'axlsx'
#require 'csv'
slashdot_articles = []
File.open("../files/slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('article').map { |i|
    {
      title: i.at_css('title').content,
      link: i.at_css('link').content,
      summary: i.at_css('summary').content
    }
  }
end
puts slashdot_articles