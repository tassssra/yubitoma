class Event < ApplicationRecord
  has_many :users, through: :joins
  has_many :joins
  accepts_nested_attributes_for :joins
end
