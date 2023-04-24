# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'Jonesy@ga.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'davey@ga.com', :password => 'chicken', :admin => false
puts "#{ User.count } users"

Team.destroy_all
t1 = Team.create :name => "Jonesy's Phenomenal Fighters", :total_rating => nil
t2 = Team.create :name => "Davey's Dynastic Dopplers", :total_rating => nil
puts "#{ Team.count } teams"

Wrestler.destroy_all
Wrestler.create :name => "Naomichi Marufuji", :image => "naomichi.JPG", :country => "Japan", :height => 176, :weight => 90, :exp => 24, :rating => 9.1
Wrestler.create :name => "Undertaker", :image => "undertaker.jpg", :country => "USA", :height => 202, :weight => 136, :exp => 33, :rating => 8.76
Wrestler.create :name => "Meiko Satomura", :image => "meiko.jpg", :country => "Japan", :height => 157, :weight => 68, :exp => 28, :rating => 9.58
Wrestler.create :name => "Andreza Giant Panda", :image => "panda.jpg", :country => "Japan", :height => 256, :weight => 108, :exp => 5, :rating => 9.89
Wrestler.create :name => "Penta El Zero Miedo", :image => "penta.jpg", :country => "Mexico", :height => 180, :weight => 91, :exp => 15, :rating => 9.2
Wrestler.create :name => "Rhea Ripley", :image => "rhea.jpg", :country => "Australia", :height => 175, :weight => 77, :exp => 9, :rating => 8.38
Wrestler.create :name => "Rey Fenix", :image => "rey.jpg", :country => "Mexico", :height => 177, :weight => 75, :exp => 18, :rating => 9.12
Wrestler.create :name => "John Cena", :image => "cena.jpg", :country => "USA", :height => 185, :weight => 114, :exp => 23, :rating => 7.45
Wrestler.create :name => "Great Muta", :image => "muta.jpg", :country => "Japan", :height => 188, :weight => 110, :exp => 38, :rating => 9.33
Wrestler.create :name => "The Rock", :image => "rock.jpg", :country => "USA", :height => 193, :weight => 120, :exp => 20, :rating => 9.39
Wrestler.create :name => "Kenta Kobashi", :image => "kenta.jpg", :country => "Japan", :height => 186, :weight => 115, :exp => 25, :rating => 9.76
Wrestler.create :name => "Mistico", :image => "mistico.jpg", :country => "Mexico", :height => 170, :weight => 79, :exp => 24, :rating => 7.66
Wrestler.create :name => "Alexa Bliss", :image => "alexa.jpg", :country => "USA", :height => 155, :weight => 46, :exp => 9, :rating => 9.09
Wrestler.create :name => "Mitsuharu Misawa", :image => "mitsuharu.jpg", :country => "Japan", :height => 185, :weight => 110, :exp => 27, :rating => 9.74
puts "#{ Wrestler.count } wrestlers created."

Promotion.destroy_all
Promotion.create :promotion => "NJPW", :logo => "https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/New_Japan_Pro_Wrestling_Logo_2.svg/1200px-New_Japan_Pro_Wrestling_Logo_2.svg.png", :name => "New Japan Pro Wrestling", :country => "Japan", :year => 1972, :instagram => "https://www.instagram.com/njpw_global/"
Promotion.create :promotion => "WWE", :logo => "https://www.freepnglogos.com/uploads/wwe-logo-black-png-8.png", :name => "World Wrestling Entertainment", :country => "USA", :year => 1948, :instagram => "https://www.instagram.com/wwe/"
Promotion.create :promotion => "CMLL", :logo => "cmll.png", :name => "Consejo Mundial de Lucha Libre", :country => "Mexico", :year => 1933, :instagram => "https://www.instagram.com/cmll_mx/"
Promotion.create :promotion => "NOAH", :logo => "noah.png", :name => "Pro Wrestling NOAH", :country => "Japan", :year => 2000, :instagram => "https://www.instagram.com/noah_ghc/"
Promotion.create :promotion => "AEW", :logo => "aew.png", :name => "All Elite Wrestling", :country => "USA", :year => 2019, :instagram => "https://www.instagram.com/aew/"
Promotion.create :promotion => "AAA", :logo => "AAA.png", :name => "Lucha Libre AAA World Wide", :country => "Mexico", :year => 1992, :instagram => "https://www.instagram.com/luchalibreaaa/"
puts "#{ Promotion.count } promotions created."


# ASSOCIATIONS ####################################################################################

#