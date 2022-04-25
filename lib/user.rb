require 'pry'

#1) On doit créer une classe User:
class User
#2) Un User a 2 variables d'instance, un @email (string) et un @age (Integer),
#que l'on peut lire et modifier à sa guise: 
  attr_accessor :email, :age

  def initialize(user_email, user_age)
    @email = user_email
    @age = user_age
  end


end

binding.pry     