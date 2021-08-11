class Alien < ApplicationRecord
  has_many :planets, dependent: :destroy
  validates :name, presence: true
end
