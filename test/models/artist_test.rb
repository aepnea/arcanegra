# == Schema Information
#
# Table name: artists
#
#  id                      :integer          not null, primary key
#  firstname               :string(255)
#  lastname                :string(255)
#  short_description       :string(255)
#  description             :text(65535)
#  email                   :string(255)
#  web                     :string(255)
#  address                 :string(255)
#  city_id                 :integer
#  state_id                :integer
#  country                 :string(255)
#  phone                   :string(255)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  cover_file_name         :string(255)
#  cover_content_type      :string(255)
#  cover_file_size         :integer
#  cover_updated_at        :datetime
#  background_file_name    :string(255)
#  background_content_type :string(255)
#  background_file_size    :integer
#  background_updated_at   :datetime
#

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
