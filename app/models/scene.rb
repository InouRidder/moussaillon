class Scene < ApplicationRecord
  has_many :products, dependent: :nullify

  mount_uploader :banner, BannerUploader

  # validates :banner, presence: true
  validates :title, presence: true
  validates :description, presence: true

end
