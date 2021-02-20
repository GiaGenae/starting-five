class User < ActiveRecord::Base
    has_secure_password
    has_many :teams, class_name: "Team", foreign_key: "coach_id"
    has_many :players, through: :teams
end
