# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class State < ActiveRecord::Base
	has_many :artists
  	has_many :orders
  	has_many :addresses
  	has_many :cities
end
