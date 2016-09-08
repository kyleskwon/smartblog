class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def new
  	@blog = Blog.new
  end

  def create
     @blog = Blog.new
     @blog.title = params[:blog][:title]
     @blog.description = params[:blog][:description]
     @blog.owner = params[:blog][:owner]

     if @blog.save
       flash[:notice] = "Blog was saved successfully."
       redirect_to @blog
     else
       flash.now[:alert] = "There was an error saving the blog. Please try again."
       render :new
     end
   end

  def edit
  end
end
