# == Schema Information
#
# Table name: cart_product_groups
#
#  id               :integer          not null, primary key
#  product_group_id :integer
#  cart_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CartProductGroup < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :cart
end
