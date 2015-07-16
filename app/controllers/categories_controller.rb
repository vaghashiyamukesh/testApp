class CategoriesController < ApplicationController
  def index
    @cateories = Categories.all
  end

  def show
  end

  def edit
  end

  def new
    @cateories = Categories.new

  end
  def create
    @cateories = Categories.create(params[:categories])
  end

  def update

  end
end
