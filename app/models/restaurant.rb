class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(italian chinese french japanese belgian) }
  has_many :reviews, dependent: :destroy
end
