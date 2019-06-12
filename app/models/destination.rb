class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def recent_5_posts
    self.posts.sort_by(&:created_at).reverse[0..4]
  end

  def most_liked_post
    self.posts.max_by(&:likes)
  end

  def avg_blogger_age
    bloggers = self.bloggers.uniq
    bloggers.map(&:age).reduce(:+)/bloggers.length
  end
end
