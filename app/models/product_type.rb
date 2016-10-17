# == Schema Information
#
# Table name: product_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductType < ActiveRecord::Base
  has_many :products
  has_many :product_attributes

  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
   new_record?
 end
end
