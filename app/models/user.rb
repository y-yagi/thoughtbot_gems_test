class User < ActiveRecord::Base
  include Pacecar
  validates :email, presence: true, uniqueness: true
end
