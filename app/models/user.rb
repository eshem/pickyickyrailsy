class User < ActiveRecord::Base
	has_many :picks
	has_many :games, through: :picks
	has_secure_password
end
