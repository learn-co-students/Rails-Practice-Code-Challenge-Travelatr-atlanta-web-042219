class BloggersController < ApplicationController
  def show
    @blogger = Blogger.find(params[:id])
    @most_liked_post = @blogger.most_liked_post
    end
end
