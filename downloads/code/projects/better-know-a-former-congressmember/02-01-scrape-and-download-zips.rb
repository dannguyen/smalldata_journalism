# Better Know a Former Congressmember
# Part 2, Step 1 - Downloading the data files

require 'nokogiri'
require 'httparty'

LOBBYING_DATA_SOURCE_URL = 'http://www.senate.gov/legislative/Public_Disclosure/database_download.htm'
ZIP_STORAGE_PATH = 'data-hold/zips'

# Fetch the index page
puts "Downloading #{LOBBYING_DATA_SOURCE_URL}..."
response = HTTParty.get LOBBYING_DATA_SOURCE_URL

# Parse it with Nokogiri
page = Nokogiri::HTML(response.body)

# Select just the links that are zip files
links = page.css(".contenttext table tr table tr td a")
zip_links = links.select{|k| k['href'] =~ /\.zip/i}

zip_links.each do |link|
   # Downloading the file
   puts "Getting #{link['href']}"
   zip_data = HTTParty.get link['href']
   
   # Save to our file system
   zip_filename = File.join(ZIP_STORAGE_PATH, File.basename(link['href']))
   puts "Saving to #{zip_filename}"
   File.write(zip_filename, zip_data)
end