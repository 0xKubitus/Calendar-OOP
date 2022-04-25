require 'pry'

#1) On doit créer une classe User:
class User
#2) Un User a 2 variables d'instance, un @email (string) et un @age (Integer),
#que l'on peut lire et modifier à sa guise: 
  attr_accessor :email, :age
  @@all_users = []

  def initialize(user_email, user_age)
    @email = user_email
    @age = user_age
    @@all_users << self
  end

  def self.all
    return @@all_users
  end


 #POUR TESTER FAIRE CE QUI SUIT (mais en réalité il vaut mieux tester directement dans le fichier 'app.rb' pour verifier que tout est bien relié):

   kubi = User.new("kubi@mail", 27)
   rick = User.new("rick@mail", 72)
   morty = User.new("morty@mail", 15)
   julie = User.new("julie@julie.com", 35)
   jean = User.new("jean@jean.com", 23)
   claude = User.new("claude@claude.com", 75)

  # p User.all



  def self.find_by_email(input)
    @@all_users.each do |user|

      if user.email == input
        puts "utilisateur trouvé dans la BDD !"
        return user
      end
    end 
    puts "aucun utilisateur n'a cet email"
    return false   
  end




end

p User.all
puts " "
user_1 = User.find_by_email("claude@claude.com")
puts " "
puts user_1
puts " "
user_2 = User.find_by_email("blabla@zob.com")
puts user_2
puts " "