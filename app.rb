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

event_one = Event.new("2023-01-13 09:00", 30, "reunion", ["truc@machin.com", "bidule@chose.fr"])
event_two = Event.new("2023-01-13 10:05", 15, "pause", ["truc@machin.com" , "chose@tkt.ch"])
event_three = Event.new("2023-01-13 13:00", 120, "projet A", ["bidule@chose.fr", "mange@tesmorts.fr"])

p Event.all
puts " "
p event_one.postpone_24h
puts " "
p event_one