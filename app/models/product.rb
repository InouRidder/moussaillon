class Product < ApplicationRecord
  CATEGORIES = ["eat", "sleep", "live", "sit", "cook"].freeze
  belongs_to :scene, optional: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_attachments :photos, maximum: 5
  include PgSearch
  pg_search_scope :search_name_and_description, against: [:name, :description, :category], using: {tsearch: {prefix: true, dictionary: "english"}}
  pg_search_scope :find_by_category, against: [:category]


  validates :name, presence: true
  validates :description, presence: true
  # validates :price, presence: true
  validates :category, presence: true, inclusion: CATEGORIES

end
