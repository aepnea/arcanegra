class ProductProductAttribute < ActiveRecord::Base
  belongs_to :product
  belongs_to :product_attribute
end
