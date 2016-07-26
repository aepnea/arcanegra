# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  city_id     :integer
#  state_id    :integer
#  address     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string(255)
#

class Address < ActiveRecord::Base
  belongs_to :customer
  belongs_to :city
  belongs_to :state
  
end
