# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

#kubi = User.new(27, "kubi@mail")
#rick = User.new(72, "kubi@mail")
#morty = User.new(15, "kubi@mail")

#p User.all

event_one = Event.new("2021-01-13 09:00", 30, "reunion", ["truc@machin.com", "bidule@chose.fr"])
event_two = Event.new("2023-01-13 10:05", 15, "pause", ["truc@machin.com" , "chose@tkt.ch"])
event_three = Event.new("2023-01-13 13:00", 120, "projet A", ["bidule@chose.fr", "mange@tesmorts.fr"])

p Event.all
puts " "
p event_one
puts " "
p event_one.postpone_24h
puts " "
p event_one
puts " "
p event_one.end_date
puts " "
p event_one.is_past?
puts " "
p event_one.is_future?
puts " "
p event_two.is_future?
puts " "
p event_two.is_past?
puts " "
p !event_two.is_past?
puts " "
p event_two.is_soon?

#on créée un 4eme event, qui commence précisément 20min aprés lancement du programme: (Time.now+(20min*60sec))
event_four = Event.new("#{Time.now+(20*60)}", 30, "reunion", ["truc@machin.com", "bidule@chose.fr"])
p event_four.is_soon?
puts " "
p event_four
puts " "
p event_four.to_s