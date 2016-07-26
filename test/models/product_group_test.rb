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

require 'test_helper'

class ProductGroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
