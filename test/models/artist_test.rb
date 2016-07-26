# == Schema Information
#
# Table name: artists
#
#  id                :integer          not null, primary key
#  firstname         :string(255)
#  lastname          :string(255)
#  short_description :string(255)
#  description       :text(65535)
#  email             :string(255)
#  web               :string(255)
#  address           :string(255)
#  city_id           :integer
#  state_id          :integer
#  country           :string(255)
#  phone             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
