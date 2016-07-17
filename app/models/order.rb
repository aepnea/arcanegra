class Order < ActiveRecord::Base
  belongs_to :cart
  belongs_to :customer
  belongs_to :order_status
  belongs_to :payment_status
  belongs_to :payment_type
  belongs_to :address
end
