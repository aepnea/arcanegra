class AddAttachmentCoverBackgroundToArtists < ActiveRecord::Migration
  def change
    add_attachment :artists, :cover
    add_attachment :artists, :background
  end
end
