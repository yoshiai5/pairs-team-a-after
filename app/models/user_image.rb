class UserImage < ApplicationRecord

  belongs_to :User, optional: true

  # team-aで使用していた『image_uploader』内容
  mount_uploader :content, ImageUploader

end
