class ProductAttribute < ActiveRecord::Base
  has_many :products, :through => :product_product_attribute, autosave: true, :dependent => :destroy
  has_many :product_product_attribute
  belongs_to :product_type
end
