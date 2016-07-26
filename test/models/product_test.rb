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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
