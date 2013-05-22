class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password
end
