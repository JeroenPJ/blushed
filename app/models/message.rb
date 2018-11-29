class Message < ApplicationRecord
  validates :body, presence: true, length: { in: 10..1000 }

  def date
    created_at.strftime("%Y-%m-%d // %H:%M")
  end

  def self.feed
    all.order(created_at: :desc)
  end
end
