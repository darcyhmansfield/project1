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
u3 = User.create :email => 'bonnie@ga.com', :password => 'chicken', :admin => false
puts "#{ User.count } users"

Team.destroy_all
t1 = Team.create :name => "Jonesy's Phenomenal Fighters", :total_rating => nil
t2 = Team.create :name => "Davey's Dynastic Dopplers", :total_rating => nil
t3 = Team.create :name => "Bonnie's Bootilicious Beauties", :total_rating => nil
puts "#{ Team.count } teams"

Wrestler.destroy_all
w1 = Wrestler.create :name => "Naomichi Marufuji", :image => "naomichi.JPG", :country => "Japan", :height => 176, :weight => 90, :exp => 24, :rating => 9.1
w2 = Wrestler.create :name => "Undertaker", :image => "undertaker.jpg", :country => "USA", :height => 202, :weight => 136, :exp => 33, :rating => 8.76
w3 = Wrestler.create :name => "Meiko Satomura", :image => "meiko.jpg", :country => "Japan", :height => 157, :weight => 68, :exp => 28, :rating => 9.58
w4 = Wrestler.create :name => "Andreza Giant Panda", :image => "panda.jpg", :country => "Japan", :height => 256, :weight => 108, :exp => 5, :rating => 9.89
w5 = Wrestler.create :name => "Penta El Zero Miedo", :image => "penta.jpg", :country => "Mexico", :height => 180, :weight => 91, :exp => 15, :rating => 9.2
w6 = Wrestler.create :name => "Rhea Ripley", :image => "rhea.jpg", :country => "Australia", :height => 175, :weight => 77, :exp => 9, :rating => 8.38
w7 = Wrestler.create :name => "Rey Fenix", :image => "rey.jpg", :country => "Mexico", :height => 177, :weight => 75, :exp => 18, :rating => 9.12
w8 = Wrestler.create :name => "John Cena", :image => "cena.jpg", :country => "USA", :height => 185, :weight => 114, :exp => 23, :rating => 7.45
w9 = Wrestler.create :name => "Great Muta", :image => "muta.jpg", :country => "Japan", :height => 188, :weight => 110, :exp => 38, :rating => 9.33
w10 = Wrestler.create :name => "Ke Monito", :image => "monito.JPG", :country => "Mexico", :height => 80, :weight => 45, :exp => 5, :rating => 9.35
w11 = Wrestler.create :name => "The Rock", :image => "rock.jpg", :country => "USA", :height => 193, :weight => 120, :exp => 20, :rating => 9.39
w12 = Wrestler.create :name => "Kenta Kobashi", :image => "kenta.jpg", :country => "Japan", :height => 186, :weight => 115, :exp => 25, :rating => 9.76
w13 = Wrestler.create :name => "Mistico", :image => "mistico.jpg", :country => "Mexico", :height => 170, :weight => 79, :exp => 24, :rating => 7.66
w14 = Wrestler.create :name => "Alexa Bliss", :image => "alexa.jpg", :country => "USA", :height => 155, :weight => 46, :exp => 9, :rating => 9.09
w15 = Wrestler.create :name => "Mitsuharu Misawa", :image => "mitsuharu.jpg", :country => "Japan", :height => 185, :weight => 110, :exp => 27, :rating => 9.74
puts "#{ Wrestler.count } wrestlers created."

Promotion.destroy_all
p1 = Promotion.create :abbrev => "NJPW", :logo => "njpw.png", :name => "New Japan Pro Wrestling", :country => "Japan", :year => 1972, :instagram => "https://www.instagram.com/njpw_global/"
p2 = Promotion.create :abbrev => "WWE", :logo => "wwe.png", :name => "World Wrestling Entertainment", :country => "USA", :year => 1948, :instagram => "https://www.instagram.com/wwe/"
p3 = Promotion.create :abbrev => "CMLL", :logo => "cmll.png", :name => "Consejo Mundial de Lucha Libre", :country => "Mexico", :year => 1933, :instagram => "https://www.instagram.com/cmll_mx/"
p4 = Promotion.create :abbrev => "NOAH", :logo => "noah.png", :name => "Pro Wrestling NOAH", :country => "Japan", :year => 2000, :instagram => "https://www.instagram.com/noah_ghc/"
p5 = Promotion.create :abbrev => "AEW", :logo => "aew.png", :name => "All Elite Wrestling", :country => "USA", :year => 2019, :instagram => "https://www.instagram.com/aew/"
p6 = Promotion.create :abbrev => "AAA", :logo => "aaa.png", :name => "Lucha Libre AAA World Wide", :country => "Mexico", :year => 1992, :instagram => "https://www.instagram.com/luchalibreaaa/"
puts "#{ Promotion.count } promotions created."


# ASSOCIATIONS ####################################################################################
puts "Teams and Users"
u1.teams << t1
u2.teams << t2
u3.teams << t3

puts "Teams and Wrestlers"
t1.wrestlers << w4 << w12 << w14
t2.wrestlers << w2 << w7 << w10
t3.wrestlers << w2 << w5 << w15

puts "Promotions and Wrestlers"
p1.wrestlers << w3 << w4 << w12 << w15
p2.wrestlers << w2 << w8 << w11 << w14
p3.wrestlers << w13 << w10
p4.wrestlers << w1 << w9
p5.wrestlers << w7 << w6
p6.wrestlers << w5