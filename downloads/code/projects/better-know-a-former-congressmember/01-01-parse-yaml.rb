# Better Know a Former Congressmember
# Part 1, Step 1 - Parsing the YML

require 'yaml'

fname = 'data-hold/legislators-historical-recent.yaml'
# this value will be the same throughout our program's execution
this_year = Date.today.year

# conveniently loads everything in a hash
members = YAML.load_file(fname)

### Let's see how many we have
puts members.count
# => 1019

### elect only the members under 80 years old
valid_former_members = members.select do |member| 
  # convert the birthday string, e.g. 1961-08-02, into a Date
  # format and grab the year, e.g. 1961
  birthday_year = Date.parse(member['bio']['birthday']).year

  # e.g. 2013 - 1961
  this_year - birthday_year < 80 
end

### Let's see how many we have
puts valid_former_members.count
# => 739
