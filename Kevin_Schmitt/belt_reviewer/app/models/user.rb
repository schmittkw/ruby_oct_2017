class User < ActiveRecord::Base
  has_secure_password

  email_regex = /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
  before_save :downcase, :upcase
  validates :first_name, :last_name, presence: true, length: { in: 2..20}
  validates :email, presence: true, uniqueness: true, format: { with: email_regex }
  validates :city, presence: true, length: { in: 2..30 }
  validates :state, presence: true, length: { is: 2 }


  def downcase
    self.email.downcase!
    # self.name.downcase!
  end
  def upcase
    self.state.upcase!
  end





end
