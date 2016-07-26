# == Schema Information
#
# Table name: product_product_groups
#
#  id               :integer          not null, primary key
#  product_id       :integer
#  product_group_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ProductProductGroup < ActiveRecord::Base
  belongs_to :product
  belongs_to :product_group
end
