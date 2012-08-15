# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Load the NDGT quotes. Keeping this in seed until a production server is chosen
require_relative 'quotes_seed.rb'

# Create the admin user
User.create(email: 'dheniges@fake.com', password: 'tester', password_confirmation: 'tester')

