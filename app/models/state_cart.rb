# == Schema Information
#
# Table name: state_carts
#
#  id         :integer          not null, primary key
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StateCart < ActiveRecord::Base
end
