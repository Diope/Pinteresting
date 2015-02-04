class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :large => '850x850>', :medium => '300x300>', :thumb => '100x100>'}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :image, presence: true
end
