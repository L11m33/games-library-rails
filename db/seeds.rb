# db/seeds.rb
Game.destroy_all
Rental.destroy_all
Review.destroy_all
User.destroy_all

users = User.create!([
                       { name: "Kamil" },
                       { name: "Anna" },
                       { name: "Marek" }
                     ])

games = Game.create!([
                       { title: "The Witcher 3", genre: "RPG", year: 2015, description: "Otwarte światy, epicka przygoda Geralta." },
                       { title: "Cyberpunk 2077", genre: "RPG", year: 2020, description: "Futurystyczne miasto, wybory i akcja." },
                       { title: "FIFA 25", genre: "Sportowa", year: 2025, description: "Najlepsza symulacja piłki nożnej." },
                       { title: "Minecraft", genre: "Sandbox", year: 2011, description: "Buduj, odkrywaj i przetrwaj w świecie bloków." },
                       { title: "Among Us", genre: "Party", year: 2018, description: "Wykrywaj oszusta wśród członków załogi." }
                     ])

Rental.create!([
                 { game: games[0], user: users[0], rented_on: Date.today - 7, returned_on: Date.today - 2 },
                 { game: games[1], user: users[1], rented_on: Date.today - 3 },
                 { game: games[2], user: users[2], rented_on: Date.today - 1 }
               ])

Review.create!([
                 { game: games[0], user: users[1], comment: "Rewelacyjna gra!", rating: 5 },
                 { game: games[1], user: users[0], comment: "Trochę bugów, ale wciąga", rating: 4 },
                 { game: games[2], user: users[2], comment: "Super zabawa na mecze", rating: 5 }
               ])
