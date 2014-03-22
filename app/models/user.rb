class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :name, :email
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
end
