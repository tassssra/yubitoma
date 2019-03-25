# app/models/event.rb
class Event < ApplicationRecord
  has_one_attached :image
  attribute :new_image

  belongs_to :user
  has_many :joins
  has_many :joined_users, through: :joins, source: :user
  accepts_nested_attributes_for :joins

  validates :title, presence: true, length: 1..50
  validates :date, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { maximum: 1000 }

  before_save do
    self.image = new_image if new_image
  end
end
