# == Schema Information
#
# Table name: carts
#
#  id            :integer          not null, primary key
#  customer_id   :integer
#  state_cart_id :integer
#  total_price   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ip            :string(255)
#

require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
