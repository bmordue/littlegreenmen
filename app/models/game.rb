class Game < ActiveRecord::Base
   has_many :turns
   has_many :players
end
