# Better Know a Former Congressmember
# Part 1, Step 2 - Filtering the YAML

# Note: This assumes your script has previously
# executed the YAML-parsing snippet and has 
# the `members` variable filled

# Select only the members that: 
# - Were 65 years old or younger when they left office
# - Finished their term in 1990 or after
valid_former_members = members.select do |member|
  last_year_at_work = Date.parse(member['terms'].last['end']).year
  last_year_at_work >= 1990 && this_year - last_year_at_work <= 65
end

puts valid_former_members.count
# => 931