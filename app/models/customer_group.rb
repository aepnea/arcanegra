# == Schema Information
#
# Table name: customer_groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CustomerGroup < ActiveRecord::Base
end
