class CategoriesController < ApplicationController
  def index
    @todo = Todo.find(params[:todo_id])
    @categories = @todo.category
  end

  def show
  end

  def edit
  end

  def new
      @todo = Todo.find(params[:todo_id])
      @category = Category.new
  end

  def create
    @todo = Todo.find(params[:todo_id])
    @category = @todo.categories.new(category_params)
    if @category.save
      redirect_to todos_path
    else
      render :new
    end
  end

  private
    def category_params
      params.require(:category).permit(:name, :todo_id)
    end

end
