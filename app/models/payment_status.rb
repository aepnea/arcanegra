# == Schema Information
#
# Table name: payment_statuses
#
#  id              :integer          not null, primary key
#  status          :string(255)
#  payment_type_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class PaymentStatus < ActiveRecord::Base
  belongs_to :payment_type
end
