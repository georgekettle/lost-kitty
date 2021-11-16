# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating pet"
Pet.create!(
    name: "Barry",
    image: "https://images.unsplash.com/photo-1625369708811-65ebfc5ca632?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80",
    species: "fish",
    date_found: Date.today,
    address: "42 Wallaby Way, Sydney",
    number: "0432876404",
    found_by: "Sarah"
)
puts "Finished creating pet"