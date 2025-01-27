require "pry"
class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows , through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    # lists all of the characters that actor has alongside the show that the character is in.
    def list_roles
        self.characters.map do |character|
          "#{character.name} - #{character.show.name}"
        end
      end
end
