class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages
  validates :title, presence: true, length: { in: 7..40 } #7-40 characters
  validates :content, presence: true
end
