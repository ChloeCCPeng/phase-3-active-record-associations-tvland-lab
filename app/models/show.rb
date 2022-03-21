require "pry"
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        # binding.pry
        actors.map do |actor|
        actor.full_name
        end
    end
end


# self.characters.map do |character|
#     "#{character.name} - #{character.show.name}"
#   end
#actors_list: Define a method in the Show class called #actors_list that returns an Array of the full names of each actor associated with a show. Remember, a show should have many actors through characters. Hint: it may help to use another association macro to access the actors for the show.