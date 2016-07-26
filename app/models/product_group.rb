# == Schema Information
#
# Table name: product_groups
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  short_description :string(255)
#  description       :text(65535)
#  on_sale           :boolean
#  price             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class ProductGroup < ActiveRecord::Base
	  has_many :products, :through => :product_product_group, autosave: true, :dependent => :destroy
	  has_many :artists, :through => :artist_product_group, autosave: true, :dependent => :destroy
	  has_many :carts, :through => :cart_product_group, autosave: true, :dependent => :destroy

end
