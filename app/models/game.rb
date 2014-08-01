class Game < ActiveRecord::Base
   has_many :turns
   has_many :players

   after_initialize :default_values
 
   def inc_turn
     self.current_turn += 1
     self.save

     logger.info "Game:inc_turn, self.current_turn = #{self.current_turn}"
   end

   private
     def default_values
#       logger.info "Game: setting default values"
#       self.current_turn = 0
     end
end
