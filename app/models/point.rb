class Point < ApplicationRecord

  class << self
    def from_minutes_ago(num_minutes)
      where("created_at > ?", num_minutes.minutes.ago)
    end
  end

end
