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

class Order < ActiveRecord::Base
  belongs_to :cart
  belongs_to :customer
  belongs_to :order_status
  belongs_to :payment_status
  belongs_to :payment_type
  belongs_to :address
end
