class ProductAttribute < ActiveRecord::Base
  has_many :products, :through => :product_product_attribute, autosave: true, :dependent => :destroy
end
