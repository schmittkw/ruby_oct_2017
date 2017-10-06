class Blog < ActiveRecord::Base
	has_many :posts
	
	has_many :owners, :dependent => :destroy
	has_many :users, through: :owners
	
	validates :name, :description, presence: true
	validates :name, length: {minimum: 4}
	validates :description, length: {minimum: 15}
end
