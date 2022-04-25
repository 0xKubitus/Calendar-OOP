require 'pry'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  @@all_events = []


  def initialize(event_start, duration, title, attendees)
    # on utilise: 'Time.parse' pour passer event_start du format 'String' au format 'Time' :
    @start_date = Time.parse(event_start) 
    @duration = duration
    @title = title
    @attendees = attendees

    @@all_events << self # pour que chaque event soit listé dans l'array créé au tout début du programme
  end


  def self.all
    return @@all_events
  end


  def postpone_24h
    # 24h = 24 x 60min x 60sec
    @start_date = start_date + (24*60*60) # on utilise des secondes pour modifier un objet au format "Time"
  end
  

  def end_date
    #il faut ajouter la 'duration' de chaque evenement à chacune des instances de 'start_date':
    end_date = @start_date + (duration * 60) 
    #il faut multiplier 'duration' par 60 pour le convertir de minutes en secondes
    #afin de respecter le format "Time" de @start_date
  end


  def is_past?
    #tu peux comparer deux objets au format 'Time' en faisant:
    #time_1 < time_2 qui va te retourner un booléen true/false en fonction de la réponse)
    @start_date < Time.now 
  end


  def is_future?
    #tu peux comparer deux objets au format 'Time' en faisant:
    #time_1 < time_2 qui va te retourner un booléen true/false en fonction de la réponse)
    @start_date > Time.now 
  end


  def is_soon?
    return @start_date < Time.now + 60*30
  end



end

