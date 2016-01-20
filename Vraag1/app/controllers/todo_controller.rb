class TodoController < ApplicationController

  def new
		@todo = Todo.new
	end
  def create
  render plain: params[:todo].inspect
end

  def edit
		@todo = Todo.find(params[:id])
	end


  private
  def cr_params
    params.require(:todo).permit(:date_of_entry, :description, :due_date, :priority, :finished)
  end

  def upd_params
    params.require(:todo).permit(:date_of_entry, :description, :due_date, :priority, :finished)
  end
end
