class Actor < ActiveRecord::Base
   belongs_to :player
   validates :x, presence: true
   validates :y, presence: true
end
