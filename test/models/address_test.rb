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

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
