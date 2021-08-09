class BlogsController < ApplicationController
  before_action :set_params,only:[:edit, :show, :update, :destroy]
  def index
    @blogs = Blog.all
  end

  def show
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  def edit
    # binding.irb
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path
    end
  end

  def new
    @blog = Blog.new
    # binding.rb
  end
  
  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to blogs_path
  end
  private
  def set_params
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end
