# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

Recipe.create!(
  [
    {
      name: "Spaghetti Carbonara",
      description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream....",
      image_url: "https://cdn.loveandlemons.com/wp-content/uploads/2020/01/brownie-recipe.jpg",
      rating: 8.5
    },
    {
      name: "French Toast",
      description: "A delicious, easy-to-make French toast recipe, perfect for breakfast.",
      image_url: "https://cdn.loveandlemons.com/wp-content/uploads/2020/01/brownie-recipe.jpg",
      rating: 7.2
    },
    {
      name: "Chicken Tikka Masala",
      description: "A popular Indian dish made with marinated chicken in a creamy curry sauce.",
      image_url: "https://cdn.loveandlemons.com/wp-content/uploads/2020/01/brownie-recipe.jpg",
      rating: 9.5
    }
  ]
)

20.times do
  Recipe.create({
    name: Faker::Food.dish,
    description:Faker::Food.description,
    image_url:"https://cdn.loveandlemons.com/wp-content/uploads/2020/01/brownie-recipe.jpg" ,
    rating: rand(0..10)
  })
end
