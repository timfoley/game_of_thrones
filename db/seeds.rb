# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name: "House Stark", words: "Winter is Coming", seat: "Winterfell", region: "The North", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160703180116")
lannister = House.create(name: "House Lannister", words: "Hear Me Roar!", seat: "Casterly Rock", region: "The Westerlands", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151207184048")
greyjoy = House.create(name: "House Greyjoy", words: "We Do Not Sow", seat: "Pyke", region: "The Iron Islands", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160312122204")

stark.characters.create(name: "Eddard Stark", quote: "The man who passes the sentence should swing the sword.", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/3/37/Eddard_Stark_infobox_new.jpg/revision/latest/scale-to-width-down/270?cb=20160730050722")
stark.characters.create(name: "Arya Stark", quote: "A girl is Arya Stark of Winterfell. And I'm going home.", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/a/ad/Arya6x10.png/revision/latest/scale-to-width-down/270?cb=20160629211505")

lannister.characters.create(name: "Cersei Lannister", quote: "When you play the game of thrones, you win or you die. There is no middle ground.", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/c/c7/Queen_Cersei_Main_The_winds_of_Winter.jpg/revision/latest/scale-to-width-down/270?cb=20160712032316")
lannister.characters.create(name: "Jamie Lannister", quote: "The things we do for love.", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c5/Jaime_s6_Ep08_.jpg/revision/latest/scale-to-width-down/270?cb=20160616044155")

greyjoy.characters.create(name: "Theon Greyjoy", quote: "I'm a huge quaig", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/6/65/605_Theon_Promo_new.jpg/revision/latest/scale-to-width-down/270?cb=20160708203536")
greyjoy.characters.create(name: "Balon Greyjoy", quote: "I'm a huge asshole", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/2/27/Balon_Season_6.jpg/revision/latest/scale-to-width-down/199?cb=20160211221219")
