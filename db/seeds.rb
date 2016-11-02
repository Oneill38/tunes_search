# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist = Artist.create(name: "Mumford and Sons")
a = Album.create(name: "Wilder Mind", artist_id: artist.id)

s1 = Song.create(name: "Monster", album_id: a.id)
s2 = Song.create(name: "Believe", album_id: a.id)
