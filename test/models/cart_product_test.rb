# == Schema Information
#
# Table name: cart_products
#
#  id         :integer          not null, primary key
#  product_id :integer
#  cart_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CartProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
