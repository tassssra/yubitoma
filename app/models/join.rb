class Join < ApplicationRecord
  belongs_to :event
  belongs_to :user, counter_cache: :joins_count
end
