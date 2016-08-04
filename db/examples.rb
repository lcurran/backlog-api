# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = '#{name}@#{name}.com'
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

User.create!(email: 't',
             password: 't',
             password_confirmation: 't')
User.create!(email: 'z',
            password: 'z',
            password_confirmation: 'z')

Game.create!(name: 'Final Fantasy XIV: A Realm Reborn',
             summary: "Enter the realm of Eorzea with players from around the world in Final Fantasy XIV: A Realm Reborn for PlayStation 3. Final Fantasy XIV: A Realm Reborn is a massively multiplayer online role-playing game (MMORPG) that takes the wonder of the Final Fantasy legacy and expands it, allowing you to explore the realm of Eorzea like never before in a Final Fantasy game. Form a party and adventure with a multitude of players from across the globe, playing not only on PS3 but on PC as well! Forge friendships, mount chocobos, and board airships as you and your companions create your own unique stories in Eorzea. Adventure alone or join up with friends to undertake epic quests, battle familiar Final Fantasy monsters, and acquire unique abilities and equipment. All the classic elements from the series that you have come to know and love are waiting! Embark of the adventure of a lifetime to help reforge the fate of Eorzea!",
             cover: 'fqk0b3qjxbhoqc3zgozx',
             video: 'Bjg-YOFt5Oo'
            )
Game.create!(name: "The Legend of Zelda: Twilight Princess HD",
             summary: "The Legend of Zelda: Twilight Princess is a critically acclaimed masterpiece, set in a massive world bursting with life—but also shadow. A dark figure from the Twilight Realm has invaded the world of light. As Link™, a farmhand turned cursed beast, join forces with the impish Midna and trusted (albeit unusual) allies to survive a quest that'll take you to the farthest corners of Hyrule and beyond… to the Twilight Realm. This emotional adventure is now on the Wii U™ console with improved visuals and controls—and new challenges. Choose Hero Mode to take 2x normal damage, or tap the Wolf Link amiibo™ figure to unlock the tough Cave of Shadows.",
             video: "LZNWbCragSk",
             cover: "klebtdw8yafmdcyc8ljl",
            )
Game.create!(name: "The Legend of Zelda: Tri Force Heroes",
             summary: "A princess in distress... A kingdom in peril...a fashion emergency?! Team up with two other heroes to save the world of Hytopia from a witch's evil fashion curse. For the first time, you can stack three Links into a totem to solve puzzles and defeat enemies. And don’t forget to pick the perfect outfit—each one gives you a different boost or ability.",
             video: "1mptQhqArcA",
             cover: "dtj80vlbzqbywzcdcdiv",
             )

Game.create!(name: "The Legend of Zelda: Majora's Mask 3D",
             summary: "The Legend of Zelda: Majora’s Mask 3D is a remastered and enhanced version of the Nintendo classic that’s unlike any other Legend of Zelda adventure. In this shadowy tale, a masked Skull Kid drags Link into the world of Termina, where the moon is falling from the sky. Lucky for Termina, Link can reverse time and relive his last 72 hours in limitless ways. Each time, he’ll don any of his 20+ masks, help different citizens, battle different bosses, and ultimately change the fate of a world. This is the definitive version of a dark classic.",
             video: "s9zbxQ_fa9w",
             cover: "zpy6tbjyuhdtg4gvjl4n",
             )
Game.create!(name: "The Legend of Zelda: A Link Between Worlds",
            summary: "The Legend of Zelda: A Link Between Worlds is the first Zelda game made exclusively for the Nintendo 3DS is set in the fan-favorite world of The Legend of Zelda: A Link to the Past. A daring adventure awaits Link in Hyrule, where he can use his new ability to become a “drawing” and move along walls of dungeons. This opens up ways to explore and puzzle elements that give Link access to locations he could not otherwise reach.",
            video: "qAluniNRibs",
            cover: "r9ezsk5yhljc83dfjeqc",
            )


Library.create!(user_id: 1, game_id: 1, done: true)
Library.create!(user_id: 1, game_id: 2, done: true)
Library.create!(user_id: 1, game_id: 3, done: false)
Library.create!(user_id: 1, game_id: 4, done: false)
Library.create!(user_id: 2, game_id: 5)
Library.create!(user_id: 2, game_id: 4)
