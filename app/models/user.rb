class User < ActiveRecord::Base
    has_many :teams, class_name: "Team", foreign_key: "coach_id"
    has_many :players, through: :teams
    has_secure_password
    validates :password, length: {in: 8..100}, confirmation: true
    validates :username, uniqueness: true, length: {in: 5..10}
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
end
