class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts
  validates :name, uniqueness: true
  validates :age, numericality: { greater_than: 0 }
  validates :bio, length: { minimum: 30 }

  def total_likes
    array_of_likes = []
    self.posts.each do |post|
      array << post.likes
    end
    array_of_likes.sum
  end

  def featured_post
    most_liked = ''
    count = 0
      self.posts.each do |post|
        if post.likes > count
          count = post.likes
          most_liked = post
        end
      end
    most_liked
  end





end
