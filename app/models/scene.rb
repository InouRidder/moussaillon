class Scene < ApplicationRecord
  has_many :products, dependent: :nullify
  has_attachment :banner
  # validates :banner, presence: true

  validates :title, presence: true
  validates :description, presence: true

end
