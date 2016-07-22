class State < ActiveRecord::Base
	has_many :artists
  	has_many :orders
  	has_many :addresses
  	has_many :cities
end
