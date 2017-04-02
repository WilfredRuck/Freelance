# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'locations.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Store.new
  t.name = row['Name']
  t.address = row['Address']
  t.city = row['City']
  t.state = row['State']
  t.zip = row['Zip']
  t.hours = row['Hours']
  t.number = row['Number']
  t.lat = row['lat']
  t.lng = row['lng']
  t.save
  puts "#{t.name}, #{t.state} saved"
end

puts "There are now #{Store.count} rows in the transactions table"
