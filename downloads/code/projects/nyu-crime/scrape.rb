# This quick and dirty script was used to scrape
# NYU public safety webpages for crime reports into a 
# single CSV for a Fall 2013 Data Journalism class.
# This is way more verbose than it needs to be, because
# I wanted to show the output as the script executed.
#
# context here: http://www.smalldatajournalism.com/class/fall2013/notes-0930/
# author: Dan Nguyen

require 'nokogiri'
require 'open-uri'
require 'csv'
require 'cgi'

# the directory in which the relevant data files are stored
BASE_DATA_DIR = File.expand_path "../data-hold", __FILE__

# the directory in which we stash our html files
HTML_DIR = File.join BASE_DATA_DIR, 'html'

# the filename of where we stash the parsed data 
PARSED_DATA_FILE = File.join BASE_DATA_DIR, 'nyu-crime-list.csv'

# the filename of the relevant URLs
URL_LIST = File.join BASE_DATA_DIR, 'nyu-crime-urls.txt'

# this should be consistent across all pages
CRIME_TABLE_ROWS_SELECTOR = '.nyuTable table#tableSort tr'

# Setting up the CSV file...this will erase the current CSV file

csv_file = CSV.open(PARSED_DATA_FILE, "wb")

### Relevant execution part happens here
puts "Hello, we're going to do our work in this directory: 
=> #{BASE_DATA_DIR}\n"

puts "Opening the URLS file at: \n => #{URL_LIST}"

urls = File.open(URL_LIST){|f| f.readlines.map{|u| u.strip}}

puts "Found #{urls.count} URLs..."


puts "First, we'll download them and stash them to disk. 
The files will be stored at: \n => #{HTML_DIR}"

urls.each_with_index do |url, page_idx|

  puts "\n\n\n\nURL numero #{page_idx + 1}: \n => #{url}\n"
  ####
  # OK, first we download the remote webpage unless it already exists
  # on our hard drive under the ./html directory:

  # eh whatever, we're lazy, this works:
  local_filename = File.join HTML_DIR, CGI.escape(url)

  if File.exists?(local_filename)
    puts "\n...This URL already has been downloaded so we'll just open the stashed copy at: 
    => #{local_filename}"

    page = File.read(local_filename)
  else 
    puts "\n...We don't have a copy of this webpage, so let's download it..."

    page = open(url).read

    puts "...Download successful! #{page.size} bytes were downloaded..."
    puts "Stashing it at: \n => #{local_filename}"

    # making a local copy
    File.write(local_filename, page)
  end
  # OK, we have the webpage, now time to parse it.

  puts " \n---------------- "
  puts "Now time to parse this webpage...\n"

  # Using nokogiri to parse into nodes
  npage = Nokogiri::HTML(page)

  # Now use the selector to find the rows
  table_rows = npage.search(CRIME_TABLE_ROWS_SELECTOR)
  puts "Found #{table_rows.count} rows"

  # Now we iterate
  table_rows.each_with_index do |row, row_idx|
    fields = row.css('td').map{|t| t.text.gsub(/(?:\u00a0|\s)+/, ' ').strip}

    # skip if all fields are empty
    if fields.all?{|f| f.empty?}
      puts "...Row #{row_idx} was empty, so not recording it to file"
      next
    end

    if  row_idx == 0 && page_idx != 0 
      ## If it's the first row but not the first page, then
      ## we skip it. Otherwise, we write to file
      ## (the first line of the first page has the headers)
    else
      csv_file << fields  
    end
  end
end


#### now close it
csv_file.close



