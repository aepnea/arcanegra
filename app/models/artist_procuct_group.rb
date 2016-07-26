# == Schema Information
#
# Table name: artist_procuct_groups
#
#  id               :integer          not null, primary key
#  product_group_id :integer
#  artist_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ArtistProcuctGroup < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :article
end
