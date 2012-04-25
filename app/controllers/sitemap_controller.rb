class SitemapController < ApplicationController
  layout nil
  
  def index
	# Things to include in the sitemap
	@posts = Post.find(:all, :order => "updated_at DESC", :limit => 50000)
	@tags = Tag.find(:all, :order => "updated_at DESC", :limit => 50000)
	@static = [root_path, portfolio_path, blog_path, about_path, contactme_path]
	
	respond_to do |format|
		format.html # sitmap for users
		format.xml # sitemap for SEO
	end
  end
end
