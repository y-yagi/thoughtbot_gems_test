class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, case_sensitive: true,
end
