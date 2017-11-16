class Scene < ApplicationRecord
  has_many :products, dependent: :nullify
  has_attachment :banner

  scope :last_2, -> { order(created_at: :desc).first(2) }

  validates :title, presence: true
  validates :description, presence: true

end
