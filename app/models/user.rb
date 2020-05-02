class User < ActiveRecord::Base
  has_secure_password
  has_many :recipients
  has_many :text_templates

  validates_presence_of :email, :phone_number
  validates :email, uniqueness: true
  validates :phone_number, uniqueness: true
  validates :username, uniqueness: true 
  validates :password, length: {minimum: 6}, on: :create
end