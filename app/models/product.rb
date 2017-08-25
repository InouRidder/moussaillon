class Product < ApplicationRecord

  belongs_to :scene, optional: true

  include PgSearch
  pg_search_scope :search_name_and_description, against: [:name, :description, :category], using: {tsearch: {prefix: true, dictionary: "english"}}
  # pg_search_scope :search_price, against: [:price]
  pg_search_scope :find_by_category, against: [:category]

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: ["chair", "table", "couch", "bar"]

end
