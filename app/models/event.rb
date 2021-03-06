# app/models/event.rb
class Event < ApplicationRecord
  has_one_attached :image
  attribute :new_image

  belongs_to :user
  has_many :joins, dependent: :destroy
  has_many :join_users, through: :joins, source: :user
  # accepts_nested_attributes_for :joins

  validates :title, presence: true, length: 1..50
  validates :date, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { maximum: 1000 }

  # events#indexで利用
  scope :find_old_events, -> (p) { page(p).per(3).order(:date) }

  before_save do
    self.image = new_image if new_image
  end

  def joined_by?(user)
    joins.where(user_id: user.id).exists?
  end
end
