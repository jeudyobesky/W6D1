# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def destroy_all
  Author.destroy_all
  p "Author vidée"
  Post.destroy_all
  p "Post vidée"
end

def create_authors
  Author.create(first_name: "Obesky", last_name: "Joe")
  Author.create(first_name: "Oussama", last_name: "Yoda")
  p "2 Auteurs créer"
end

def create_posts
  counter = 0
  5.times do 
    Post.create(title: "Post#{counter}", content: "countenu #{counter}")
    counter += 1
  end
  p "5 acticless crées"
end

def perform
  destroy_all
  create_authors
  create_posts
  p "Fin du seed"
end

perform
