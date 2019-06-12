class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(check)
    if @post.valid?
      redirect_to @post
    else
      render :edit
    end
  end

  def create
    @post = Post.create(check)
    if @post.valid?
      redirect_to @post
    else
      render :new
    end
  end

  def like
    post = Post.find(params[:id])
    post.likes += 1
    post.save
    redirect_to post
  end
end

private

def check
  params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
end
