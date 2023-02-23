# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

List.destroy_all
puts 'creating list'
List.create(name: 'Avangers')
List.create(name: 'Disney')
List.create(name: 'Star Wars')
List.create(name: 'Horreur')
List.create(name: 'Comédie')
List.create(name: 'Romantique')
List.create(name: 'Documentaire')
List.create(name: 'Fiction')
List.create(name: 'Dessin animé')

Movie.destroy_all
puts 'creating list'

50.times.each do
  title = Faker::Movie.title
  overview = Faker::Movie.quote
  poster_url = "www.#{title}.gaumont_pathe.com"
  Movie.create(title: title, overview: overview, poster_url: poster_url, rating:'5')
end

puts 'terminer'
