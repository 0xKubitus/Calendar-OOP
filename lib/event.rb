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

  
end

