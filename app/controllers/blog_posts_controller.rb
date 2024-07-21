class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.published.latest
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end
end
