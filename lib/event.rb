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
  

end

