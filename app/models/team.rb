class Team < ActiveRecord::Base
    has_secure_password
    belongs_to :coach, class_name: "User"
    has_many :rosters
    has_many :players, through: :rosters
    
end
