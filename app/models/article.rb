# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  artist_id   :integer
#  product_id  :integer
#  tittle      :string(255)
#  description :string(255)
#  text        :text(65535)
#  enable      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Article < ActiveRecord::Base
  belongs_to :artist
end
