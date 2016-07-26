# == Schema Information
#
# Table name: carts
#
#  id            :integer          not null, primary key
#  customer_id   :integer
#  state_cart_id :integer
#  total_price   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ip            :string(255)
#

class Cart < ActiveRecord::Base
  belongs_to :customer
  belongs_to :state_cart

  has_many :product_groups, :through => :cart_product_group, autosave: true, :dependent => :destroy
  has_many :products, :through => :cart_product, autosave: true, :dependent => :destroy


end
