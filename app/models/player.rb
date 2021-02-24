class Player < ActiveRecord::Base
    has_many :rosters
    has_many :teams, through: :rosters
    validates :name, presence: true, uniqueness: true
    validates :number, presence: true, uniqueness: true
    # validates :position, allow_nil: true
    # validates :rating, allow_nil: true
end
