# == Schema Information
#
# Table name: wire_transfers
#
#  id              :integer          not null, primary key
#  bank            :string(255)
#  titular_account :string(255)
#  account         :string(255)
#  account_type    :string(255)
#  rut             :string(255)
#  email           :string(255)
#  payment_type_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class WireTransfer < ActiveRecord::Base
  belongs_to :payment_type
end
