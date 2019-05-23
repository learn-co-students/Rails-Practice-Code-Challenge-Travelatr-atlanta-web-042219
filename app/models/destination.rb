class Destination < ApplicationRecord
has_many :posts
has_many :bloggers, through: :posts


  def most_recent
    self.posts.last(5)
  end

  def most_liked
    most_liked_post = ''
    count = 0
      self.posts.each do |post|
        if post.likes > count
          most_liked_post = post
          count = post.likes
        end
      end
      most_liked_post
    end

    def avg_age
      bloggers = []
      self.posts.each do |post|
        bloggers << post.blogger.age
      end
      bloggers.uniq.sum
    end
end
