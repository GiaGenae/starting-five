class Team < ActiveRecord::Base
    belongs_to :coach, class_name: "User"
    has_many :rosters
    has_many :players, through: :rosters
    has_secure_password
    validates :password, confirmation: true
    validates :public_key presence: true, uniqueness: true, length {in: 20..100}
    validates :private_key presence: true, uniqueness: true, length {in: 20..100}
    validates :team_name presence: true, uniqueness: true
    validates :api_key uniqueness: true, length {in: 20..100}
    validates :coach, presence: true
end
