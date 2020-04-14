# Creates the admin user
# if Rails.env.development?
#   AdminUser.create!(email:                 "admin@example.com",
#                     password:              "password",
#                     password_confirmation: "password")
# end

# require "open-uri"
# require "json"

# def swapi_fetch(url)
#   JSON.parse(open(url).read)
# end

# def games_url(id)
#   "https://api.rawg.io/api/games?1=&page=#{id}"
# end

# def create_PC(int, array)
#   game_id = int
#   categories = array
#   categories.each do |category_id|
#     CategoryItem.create(genre_id: category_id, product_id: game_id)
#   end
# end

# # Creates categories to (genre) table.
# # url = "https://api.rawg.io/api/genres"

# # Genre.destroy_all
# # # genre_id = 1
# # genres = swapi_fetch(url)
# # genres["results"].each do |genre|
# #   name = genre["name"]
# #   genre_id = genre["id"]

# #     Genre.create(id: genre_id,
# #                name: name,
# #               )
# #     # genre_id = genre_id + 1
# # end

# # puts "Seed Script Generated #{Genre.count} genres."

# url = "https://api.rawg.io/api/games"

# # Creates games to (product) table.
# CategoryItem.destroy_all
# Product.destroy_all
# games_ids = 1..6
# product_id = 1
# games_ids.each do |game_id|
#   genres = []
#   games = swapi_fetch(games_url(game_id))
#   games["results"].each do |game|
#     name = game["name"]
#     released = game["released"]
#     price = rand(10.99..79.99).round(2)
#     genres_obj = game["genres"]
#     puts genres_obj
#     genres_obj.each do |genre|
#       genres << genre["id"]
#     end

#     Product.create(id:           product_id,
#                    name:         name,
#                    release_date: released,
#                    price:        price)
#     create_PC(product_id, genres)
#     genres = []
#     product_id += 1
#     genres
#   end
#   product_id = product_id
# end

# puts "Seed Script Generated #{Product.count} products."
# puts "Seed Script Generated #{CategoryItem.count} CategoryItems."

# Product.destroy_all
# product_id = 1
# products = swapi_fetch(url)
# products["results"].each do |product|
#   name = product["name"]
#   released = product["released"]
#   price = rand(10.99..79.99).round(2)

#   Product.create(id: product_id,
#                name: name,
#                release_date: released,
#                price: price
#               )
#   product_id = product_id + 1
# end

# puts "Seed Script Generated #{Product.count} products."
