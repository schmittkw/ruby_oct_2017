class Search < ActiveRecord::Base

    validates :title, presence: true, length: { minimum: 4 }
    validates :city, presence: true, length: { in: 3..30 }
    validates :state, presence: true, length: { is: 2 }



end
