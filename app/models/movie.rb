class Movie < ActiveRecord::Base
	has_many :ratings
	has_many :users , through: :users

end
