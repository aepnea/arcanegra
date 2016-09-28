# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  product_type_id   :integer
#  artist_id         :integer
#  name              :string(255)
#  short_description :string(255)
#  description       :text(65535)
#  on_sale           :boolean
#  price             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  sku               :string(255)
#

class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :artist

  has_many :images

  has_many :product_groups, :through => :product_product_group, :dependent => :destroy

  has_many :carts
  has_many :carts, :through => :cart_product, :dependent => :destroy

  has_many :product_attribute, :through => :product_product_attribute, :dependent => :destroy

  has_many :product_product_attributes

end
