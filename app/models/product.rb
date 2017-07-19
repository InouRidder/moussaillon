class Product < ApplicationRecord
  include PgSearch
  pg_search_scope :search_name_and_description, against: [:name, :description]

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
