# == Schema Information
#
# Table name: images
#
#  id                   :integer          not null, primary key
#  product_id           :integer
#  archivo_file_name    :string(255)
#  archivo_content_type :string(255)
#  archivo_file_size    :integer
#  archivo_updated_at   :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Image < ActiveRecord::Base
  belongs_to :product
  validates :archivo, attachment_presence: true

  has_attached_file :archivo, styles: {medium: "600x300", thumb: "200x100"}, default_url: "default.png"
  validates_attachment_content_type :archivo, content_type: /\Aimage\/.*\Z/
end
