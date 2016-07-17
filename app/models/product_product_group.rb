class ProductProductGroup < ActiveRecord::Base
  belongs_to :product
  belongs_to :product_group
end
