class CarProductGroup < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :cart
end
