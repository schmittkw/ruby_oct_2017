class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  

  validates :message, length: { minimum: 15}
  validates :author, :message, presence: true
end
