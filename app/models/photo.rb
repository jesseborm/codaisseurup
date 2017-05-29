class Photo < ApplicationRecord
  belongs_to :event#, optional: true

  mount_uploader :image, ImageUploader
end
