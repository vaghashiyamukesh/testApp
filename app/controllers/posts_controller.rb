class PostsController < ApplicationController
  def index
    @posts = Posts.all
  end

  def show
    @posts = Posts.find(params[:id])
  end

  def edit
    @posts = Posts.find(params[:id])
  end


  def update
    @posts = Posts.find(params[:id])
    if @posts.update_attributes(params[:posts])
      redirect_to  posts_path , :notice => "Data has been updated successfully"
    else
      redirect_to "edit"
    end
  end

  def destroy
    @posts = Posts.find(params[:id])
    @posts.destroy
    redirect_to posts_path
  end

  def new
    @posts = Posts.new
    @cateories = Categories.all
  end

  def create
    @posts = Posts.create(params[:posts])
    redirect_to posts_path
  end

end
