class Post < ActiveRecord::Base
  belongs_to :blog, :dependent => :destroy, required: true
  belongs_to :user, required: true
  
  has_many :messages
  
  validates :title, :content, presence: true
  validates :title, length: {minimum: 5}
  validates :content, length: {minimum: 15}
end
