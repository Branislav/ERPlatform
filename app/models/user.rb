class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password , :password_confirmation, :entrycount, :id

  validates_uniqueness_of :email

  has_many :kompanijas



end
