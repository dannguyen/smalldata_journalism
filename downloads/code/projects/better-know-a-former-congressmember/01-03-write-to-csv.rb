# Better Know a Former Congressmember
# Part 1, Step 3 - Writing to CSV

# Note: This assumes your script has previously
# executed the YAML-parsing snippet and has 
# the `valid_former_members` array

## Create a collection of hashes, each hash representing 
## a member data-object with attributes we care about:
members_with_atts = valid_former_members.map do |m|
  # cache these values
  last_term = m['terms'].last
  first_term = m['terms'].first 

  # This is the resulting hash. Verbose, but it works
  {
    first_name: m['name']['first'],
    middle_name: m['name']['middle'],
    last_name: m['name']['last'],
    suffix: m['name']['suffix'],
    nickname: m['name']['nickname'],
    birthday: m['bio']['birthday'],
    gender: m['bio']['gender'],
    start_date: Date.parse(first_term['start']),
    end_date: Date.parse(last_term['end']),
    party: last_term['party'],
    class:  last_term['class'],
    type: last_term['type'],
    state: last_term['state'],
    district: last_term['district'],
    bioguide: m['id']['bioguide'],
    thomas: m['id']['thomas'],
    govtrack: m['id']['govtrack']
  }
end


## let's generate a CSV
require 'csv'

# Get the column names
column_names = members_with_atts.first.keys

csv_data = CSV.generate do |csv|
  # here are the headers
  csv << column_names
  # Sloppy but effective (and assuming ordered hashes...)
  members_with_atts.each{ |x|  csv << x.values }
end

# Write to file
File.write('data-hold/former-legislators.csv', csv_data)