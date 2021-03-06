class BlogController < ApplicationController
  def index
    @posts = BlogPost.all
  end

  def show
    @post = BlogPost.find(params[:id])
  end

  def new
  end

  def create
    @post = BlogPost.create(
      title: params[:title],
      content: params[:content]
    )
    if @post.valid?
      redirect_to posts_path
    else
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    @post = BlogPost.find(params[:id])
    @post.update(
      title: params[:title],
      content: params[:content]
    )
    if @post.valid?
      redirect_to post_path(@post)
    else
      redirect_to posts_path
    end
  end
end
