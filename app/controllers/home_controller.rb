class HomeController < ApplicationController
  def index
    @title = "Home"
    @recent_posts = Post.order("updated_at DESC").limit(5)
    @posts = Post.limit(10)
  end
end
