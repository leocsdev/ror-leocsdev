class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.published.latest
  end
end
