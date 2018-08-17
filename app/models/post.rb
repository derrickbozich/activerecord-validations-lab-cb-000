

class Post < ActiveRecord::Base



  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Non-Fiction Fiction), message: "%{value} is not a valid category" }
  validate :is_clickbait?

  CLICKBAIT_PATTERNS = [
  /Won't Believe/i,
  /Secret/i,
  /Top [0-9]*/i,
  /Guess/i
]

def is_clickbait?
  if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
    errors.add(:title, "must be clickbait")
  end
end

  #
  # clickbait_patterns = [
  #   /Won't Believe/i,
  #   /Secret/i,
  #   /Top [0-9]*/i,
  #   /Guess/i
  # ]
  #
  # def is_clickbait?
  #   if clickbait_patterns.none? {|pat| pat.match title}
  #     errors.add(:title, "must be clickbait")
  #   end
  # end
  # validates :password, length: { in: 6..20 }
  # validates :phone_number, length: { is: 10 }
  # validates :email, uniqueness: true
end
