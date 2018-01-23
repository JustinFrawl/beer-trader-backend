# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(user_name: 'frawlcity', password: 'kenneth', address: '121 Croton Avenue, Mount Kisco, NY, 10549')
User.create(user_name: 'Stebbens', password: 'kenneth', address: '54 Beaumont Circle, Apt 2, Yonkers, NY, 10710')
Beer.create(name: "Heady Topper", description: "Original DIPA from Vermont that started it all...", abv: 8, style: "DIPA", brewery: "The Alchemist")
BeerList.create(user_id: 1, beer_id: 1)
TradeBeer.create(beer_id: 1, trade_id: 1)
Beer.create(name: 'Pliny the Elder', description: 'Another OG, the pinnacle of West Coast IPAs', abv: 7, style: 'IPA', brewery: 'Russian River Brewing Company')
TradeBeer.create(beer_id: 2, trade_id: 1)
BeerList.create(user_id: 2, beer_id: 2)
Trade.create(creator_id: 1, receiver_id: 2, creator_beer_id: 1, receiver_beer_id: 2, status: false)
Message.create(user_id: 1, trade_id: 1, receiver_id: 2, content: 'This trade ok for you?')
Message.create(user_id: 2, trade_id: 1, receiver_id: 1, content: 'yeah man')
