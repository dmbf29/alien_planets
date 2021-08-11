class Planet < ApplicationRecord
  belongs_to :alien
  validates :name, presence: true
end
