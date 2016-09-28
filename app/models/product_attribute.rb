class ProductAttribute < ActiveRecord::Base
  has_many :products, :through => :product_product_attribute, :dependent => :destroy
  has_many :product_product_attributes
  belongs_to :product_type
end
