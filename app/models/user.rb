require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_many :posts

  has_secure_password

end

#TEST HAHAHAHA
