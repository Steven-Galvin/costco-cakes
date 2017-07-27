class CakeOrder < ApplicationRecord
  has_attached_file :photo,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }
end
