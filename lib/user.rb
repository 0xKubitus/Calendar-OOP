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


=begin 

POUR TESTER FAIRE CE QUI SUIT:

 kubi = User.new(27, "kubi@mail")
 random = User.new(20, "random@rdm")

 p User.all

 =end