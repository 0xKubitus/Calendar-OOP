require 'pry'

#1) On doit créer une classe User:
class User
#2) Un User a 2 variables d'instance, un @email (string) et un @age (Integer),
#que l'on peut lire et modifier à sa guise: 
  attr_accessor :age, :email
  @@all_users = []

  def initialize(user_email, user_age)
    @email = user_email
    @age = user_age
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

end


#POUR TESTER FAIRE CE QUI SUIT (mais en réalité il vaut mieux tester directement dans le fichier 'app.rb' pour verifier que tout est bien relié):

# kubi = User.new(27, "kubi@mail")
# rick = User.new(72, "kubi@mail")
# morty = User.new(15, "kubi@mail")

# p User.all
