class Car < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :model, presence: true
  validates :feature, presence: true
end
