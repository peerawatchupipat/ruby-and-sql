# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
  new_company = Company.new
  # p new_company

  new_company["name"] = "Apple"
  new_company["city"] = "Cupertino"
  new_company["state"] = "CA"
  new_company["url"] = "https://apple.com"

  # p new_company

  new_company.save
  # p new_company

  new_company = Company.new
  # p new_company

  new_company["name"] = "Amazon"
  new_company["city"] = "Seattle"
  new_company["state"] = "WA"
  new_company["url"] = "https://amazon.com"
  new_company.save
  # p new_company

  new_company = Company.new
  # p new_company

  new_company["name"] = "Anthropic"
  new_company["city"] = "San Francisco"
  new_company["state"] = "CA"
  new_company["url"] = "https://anthropic.com"

  # p new_company

  new_company.save
  p new_company
  
  puts "Companies: #{Company.all.count}"

# 3. query companies table to find all row with California company

cali_companies = Company.where({"state" => "CA"})
p cali_companies
puts "California companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
# apple = Company.where({"name" => "Apple"})[0]
apple = Company.find_by({"name" => "Apple"})
p apple

# 5. read a row's column value
p apple["name"]

# 6. update a row's column value

p apple["name"] = "Apple Inc"
# p apple
# p Company.find_by({"name" => "Apple"})
apple.save

p apple
p Company.find_by({"name" => "Apple"})


# 7. delete a row

# apple.destroy
# puts "Companies: #{Company.all.count}"


# 1. create 2 new company

new_company = Company.new

  new_company["name"] = "Basecamp"
  new_company["city"] = "Milwaukee"
  new_company["state"] = "WI"
  new_company["url"] = "https://basecamp.com"

new_company.save

new_company = Company.new

  new_company["name"] = "Acme"
  new_company["city"] = "Milwaukee"
  new_company["state"] = "WI"
  new_company["url"] = "https://acme.com"

new_company.save

# 2. write code to display each of the. company's name, city, state, & url

# -------------------------------
# puts "All companies: #{Company.all.count}"

# new_company = Company.find_by({"name" => "Basecamp"})
# new_company2 = Company.find_by({"name" => "Acme"})

# p new_company
# p new_company2


# All companies: 5

puts "All companies: #{Company.all.count}"

companies = Company.all

for zebra in companies
  p "#{zebra["name"]} - #{zebra["url"]}"
end

# puts companies[0]["name"]
# puts companies[0]["url"]



# Basecamp, Milwaukee, WI, https://Basecamp.com
# Acme, Milwaukee, WI, https://Acme.com



