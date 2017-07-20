class Scene < ApplicationRecord
  has_many :products

  validates :banner, presence: true
end
