class TodosController < ApplicationController
  def index
    @todos = Todo.all.includes :items 
  end

  def update 
    @todo = Todo.find_by id: params[:id]
    if @todo.update_attributes todo_params 
      redirect_to todos_index_url
    else 
      redirect_to todos_index_url
    end
  end

  private 
  def todo_params 
    params.require(:todo).permit(:status)
  end
end
