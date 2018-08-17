class Author < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
validates :b, length: { maximum: 500 }
validates :password, length: { in: 6..20 }
validates :phone_number, length: { is: 10 }
end
