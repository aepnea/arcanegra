# == Schema Information
#
# Table name: orders
#
#  id                :integer          not null, primary key
#  cart_id           :integer
#  customer_id       :integer
#  order_status_id   :integer
#  payment_status_id :integer
#  payment_type_id   :integer
#  address_id        :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
