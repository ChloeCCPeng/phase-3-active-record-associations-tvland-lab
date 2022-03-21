require "pry"
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    # returns an Array of the full names of each actor 
    def actors_list
        actors.map do |actor|
        actor.full_name
        end
    end
end
