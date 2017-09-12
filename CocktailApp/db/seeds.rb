# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#cocktails
vodka = Cocktail.create!(name: 'Vodka', photo: 'http://images.shape.mdpcdn.com/sites/shape.com/files/styles/facebook_og_image/public/food-and-wine-cocktail-700x700_0.jpg')
tequila = Cocktail.create!(name: 'Tequila', photo: 'https://fthmb.tqn.com/j5WUt6cR7WhacgWdDC4IiML5J0k=/960x0/filters:no_upscale()/about/Margarita-cocktails-GettyImages-97532213-5876711a5f9b584db3a04081.jpg')
champagne = Cocktail.create!(name: 'Champagne', photo: 'https://images.food52.com/oS_kJYGGsctrcanPxtnQlEC9YxQ=/753x502/6415aa3f-5e26-4337-8132-5b75d48532b4--food52_12-18-12-0178.jpg')
gin = Cocktail.create(name: 'Gin', photo: 'http://assets.bonappetit.com/photos/57ae5057f1c801a1038bd28b/master/w_680,h_454,c_limit/chamomile-gin-cocktail-940.jpg')
beer = Cocktail.create!(name: 'Beer', photo: 'http://www.seriouseats.com/images/2016/04/20160425-beer-cocktail-recipes-roundup-11.jpg')
wine = Cocktail.create!(name: 'Wine', photo: 'https://www.letitwine.com/wp-content/uploads/2016/03/shutterstock_218072575.jpg')

puts "#{Cocktail.count} cocktails created!"


#recipes
Recipe.create!(title: 'Black Widow', description: 'Blackberries, Basil leaves, Don Julio blanco tequila, Fresh lime juice and Agave nectar.', cocktail: tequila)
Recipe.create!(title: 'Sex On The Beach', description: 'Vodka, Peach schnapps, Orange or pineapple juice, Cranberry juice and Chambord or crème de cassis (optional).', cocktail: vodka)
Recipe.create!(title: 'Dry Martini', description: 'Beefeater gin, Dry vermouth, Orange bitters and Lemon(optional).', cocktail: gin)
Recipe.create!(title: 'Moët Golden Glamour', description: 'Moët & Chandon Imperial Champagne, Navan Vanilla Liqueur and Passion fruit juice.', cocktail: champagne)
Recipe.create!(title: 'Basil Fizz', description: 'Basil Haydens Bourbon and Champagne.', cocktail: champagne)

puts "#{Recipe.count} recipes created!"


