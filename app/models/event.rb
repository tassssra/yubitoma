class Event < ApplicationRecord
  has_many :users, through: :joins
  has_many :joins
  accepts_nested_attributes_for :joins

  validates :title, presence: true, length: 1..50
  validates :date, presence: true, numericality: true
  validates :address, presence: true
  validates :description, presence: true, length: { maximum: 1000 }
end
