require 'valid_email'

class User < ApplicationRecord
  has_secure_password
  
  include ActiveModel::Validations
  attr_writer  :email

  validates :name, presence: true, length: { maximum: 50 } 
  validates :password, presence: true, length: { maximum: 6 }
  validates :email, presence: true, email: true
end
