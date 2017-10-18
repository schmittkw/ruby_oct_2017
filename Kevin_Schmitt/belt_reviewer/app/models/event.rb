class Event < ActiveRecord::Base

    email_regex = /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/

    before_save :upcase
    validates :name, presence: true, length: { in: 2..20}
    validates :date, presence: true
    validates :city, presence: true, length: { in: 2..30 }
    validates :state, presence: true, length: { is: 2 }
  
  
    # def downcase
    #   self.email.downcase!
    #   # self.name.downcase!
    # end
    def upcase
      self.state.upcase!
    end



end
