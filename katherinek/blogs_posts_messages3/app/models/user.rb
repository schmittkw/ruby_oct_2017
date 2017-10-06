class User < ActiveRecord::Base
	has_many :posts
	has_many :messages

	has_many :ownerships
	has_many :blogs, through: :ownerships

	has_many :friended, foreign_key: :friender_id, class_name: "Friendship"
	has_many :friends, through: :friended, source: :friendee

	has_many :friendships, foreign_key: :friendee_id
	has_many :friended_by, through: :friendships, source: :friender

end
