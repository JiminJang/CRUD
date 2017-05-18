class Post < ActiveRecord::Base
    has_many :comment
    mount_uploader :image, ImageUploader
end
