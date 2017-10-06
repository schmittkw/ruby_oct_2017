class Message < ActiveRecord::Base
  belongs_to :post
  validates :message, presence: true, length: { in: 15..50 }
  validates :author, presence: true
end
