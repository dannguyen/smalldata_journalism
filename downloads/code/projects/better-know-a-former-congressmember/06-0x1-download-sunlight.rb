require 'httparty'
require 'nokogiri'
require 'fileutils'

CSV_DIR = File.expand_path "~/Downloads/sunlight-house-csvs"
FileUtils.makedirs(CSV_DIR)

SUNLIGHT_EXPENDITURES_URL = 'http://sunlightfoundation.com/tools/expenditures/'

page = Nokogiri::HTML(HTTParty.get(SUNLIGHT_EXPENDITURES_URL))

# good ol XPath
links = page.search('//li/a[contains(text(), "Detail")]')

links.each do |link|
  href = link['href']
  fname = File.join(CSV_DIR, File.basename(href))

  puts "Saving to #{fname}"
  File.write(fname, HTTParty.get(href))
end

