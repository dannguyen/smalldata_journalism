# Better Know a Former Congressmember
# Part 2, Step 2 - Unzipping the zip files

# This assumes you have downloaded all the zip files

ZIP_STORAGE_PATH = 'data-hold/zips'
XML_STORAGE_PATH = 'data-hold/xml'

require 'zip/zipfilesystem'

# Get all the zip filenames from where we stored them
zip_filenames = Dir.glob(File.join(ZIP_STORAGE_PATH, '*.zip'))

zip_filenames.each do |zip_filenames|
   Zip::ZipFile.open(zipfile) do |zip_file|
      zip_file.entries.each do |zip_fname|
        # do something with file
         xml_fname = File.join(XML_STORAGE_PATH, zip_fname.to_s)
         puts "\tWriting to #{xml_fname}"
         zipfile.extract(zip_fname, xml_fname)
      end
   end
 end