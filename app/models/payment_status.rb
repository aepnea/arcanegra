class PaymentStatus < ActiveRecord::Base
  belongs_to :payment_type
end