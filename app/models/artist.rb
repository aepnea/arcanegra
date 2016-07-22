class Artist < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  has_many :products
  has_many :product_groups, :through => :artist_product_group, autosave: true, :dependent => :destroy

end
