class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list 
        self.characters.collect do |character|
            if character.show == self
                character.actor.full_name
            end
        end
    end 

end