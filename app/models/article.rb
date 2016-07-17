class Article < ActiveRecord::Base
  belongs_to :artist
  belongs_to :product
end
