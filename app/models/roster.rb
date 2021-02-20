class Roster < ActiveRecord::Base
    belongs_to :player
    belongs_to :team 
    validates :player, presence: true
    validates :team, presence: true
end
