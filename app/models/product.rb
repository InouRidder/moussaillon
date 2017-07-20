class Product < ApplicationRecord

  belongs_to :scene, optional: true

  include PgSearch
  pg_search_scope :search_name_and_description, against: [:name, :description]
  pg_search_scope :search_price, against: [:price]

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
