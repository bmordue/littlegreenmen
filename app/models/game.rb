class Game < ActiveRecord::Base
   has_many :turns
   has_many :players

   def inc_turn
     self.current_turn += 1
     self.save

     logger.info "Game:inc_turn, self.current_turn = #{self.current_turn}"
   end
end
