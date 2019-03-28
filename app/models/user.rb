class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable

  has_many :events, dependent: :destroy
  has_many :joins, dependent: :destroy
  has_many :join_events, through: :joins, source: :event
  # has_many :joined_events, through: :joins, source: :event

  # def already_joined?(event)
  #   self.joins.exists?(event_id: event.id)
  # end

  has_one_attached :avatar
end
