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

class Artist < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  has_many :articles
  has_many :products
  has_many :product_groups, :through => :artist_product_group, autosave: true, :dependent => :destroy

  has_attached_file :cover, styles: {medium: "300x300", thumb: "100x100"}, default_url: "/images/:style/cover.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  has_attached_file :background, styles: {medium: "600x300", thumb: "200x100"}, default_url: "/images/:style/background.png"
  validates_attachment_content_type :background, content_type: /\Aimage\/.*\Z/

  extend FriendlyId
  friendly_id :nickname, use: :slugged

  def should_generate_new_friendly_id?
   new_record?
  end
end
