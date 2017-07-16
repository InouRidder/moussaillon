class Product < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
