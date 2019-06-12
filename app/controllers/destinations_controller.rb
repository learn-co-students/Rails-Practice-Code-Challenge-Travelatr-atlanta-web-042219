class DestinationsController < ApplicationController
  def show
    @destination = Destination.find(params[:id])
    @recent_5_posts = @destination.recent_5_posts
    @most_liked_post = @destination.most_liked_post
    @avg_age = @destination.avg_blogger_age
  end
end
