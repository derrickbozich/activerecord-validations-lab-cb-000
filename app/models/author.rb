class Author < ActiveRecord::Base
  validates :name, length: { minimum: 2 }, uniqueness: true
  # validates :bio, length: { maximum: 500 }
  # validates :password, length: { in: 6..20 }
  validates :phone_number, length: { is: 10 }
  # validates :email, uniqueness: true
end
