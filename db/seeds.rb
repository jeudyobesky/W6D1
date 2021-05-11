# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def destroy_all
  Author.destroy_all
  p "Authors vidé"
  Post.destroy_all
  p "Posts vidé"
end

def create_authors
  Author.create(first_name: "Obesky", last_name: "Joe")
  Author.create(first_name: "Oussama", last_name: "Yoda")
  p "Création de 2 Author"
end

def create_posts
  counter = 0
  5.times do 
    counter += 1
    Post.create(title: "Post#{counter}", content: "Mauris pharetra eleifend libero eu porttitor. Morbi tristique placerat nisi, vel elementum mauris malesuada vitae. Sed pellentesque imperdiet mi, ut pharetra justo. Aliquam accumsan euismod enim pellentesque iaculis.", author_id:2)
  end
  3.times do
    Post.create(title: "Post#{counter}", content: "Mauris pharetra eleifend libero eu porttitor. Morbi tristique placerat nisi, vel elementum mauris malesuada vitae. Sed pellentesque imperdiet mi, ut pharetra justo. Aliquam accumsan euismod enim pellentesque iaculis.", author_id:1)
  end
  p "Création de 8 Post"
end

def perform
  destroy_all
  create_authors
  create_posts
  p "Fin du seed"
end

perform
