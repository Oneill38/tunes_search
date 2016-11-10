# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = ItunesApi.new

i.create_profile("Mumford and Sons")
i.create_profile("The Lumineers")
i.create_profile("Fleetwood Mac")
i.create_profile("Bon Iver")
i.create_profile("Lord Huron")
i.create_profile("Two Door Cinema Club")
i.create_profile("Glass Animals")
i.create_profile("River Whyless")
i.create_profile("Jack Garratt")
i.create_profile("Hozier")
i.create_profile("Oh Wonder")