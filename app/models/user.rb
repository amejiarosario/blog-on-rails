class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  
  validates :name,  :presence   => true,
                    :length     => { :maximum => 80 }
  
  validates :password,  :presence     => true,
                        :confirmation => true,
                        :length       => { :within => 4..40 }

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true,
                    :format => {:with => email_regex},
                    :uniqueness => {:case_sensitive => false }

  before_save :encrypt_password

  private
    def encrypt_password
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      string # Only a temporary implementation!
    end

end
