class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts
  validates :name, uniqueness: true
  validates :age, length: {minimum: 1}
  validates :bio, length: {minimum: 31}

  def total_likes
    self.posts.map(&:likes).reduce(:+)
  end

  def most_liked_post
    self.posts.max_by(&:likes)
  end

  def top_5_destinations
    dests = self.posts.map(&:destination)
    dests.uniq.sort_by {|destination| dests.count(destination)}.reverse[0..4]
  end

end
