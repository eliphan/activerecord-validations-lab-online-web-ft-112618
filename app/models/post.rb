class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction, Non-Fiction)}
  validate :clickbait
  
  
  def clickbait
    @posts = Post.all
    @post.each do |post| 
      if
      errors.add(:title, "need to more clickbait-y")
    end
  end
  
end
