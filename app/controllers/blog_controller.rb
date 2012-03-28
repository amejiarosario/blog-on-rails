class BlogController < ApplicationController
  def index
    @title = "Blog"
    @posts = Post.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
end
