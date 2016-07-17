class ArtistProcuctGroup < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :article
end
