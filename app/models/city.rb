class City < ActiveRecord::Base
  belongs_to :state
  has_many :artists
  has_many :orders
  has_many :addresses
end
