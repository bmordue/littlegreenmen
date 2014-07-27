class Turn < ActiveRecord::Base
   belongs_to :game
   has_many :game_actions
   has_many :game_events   
end
