class Scene < ApplicationRecord
  has_many :products, dependent: :nullify

  # validates :banner, presence: true

  validates :title, presence: true
  validates :description, presence: true

end
