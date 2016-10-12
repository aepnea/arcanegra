class AddNicknameToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :nickname, :string
  end
end
