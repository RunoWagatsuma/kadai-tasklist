class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def task_params
    params.require(:task).permit(:content)
    # params = { task: { content: "こんにちは"}, submit: "送信" }
    # params[:task][:content] #=> "こんにちは" 
  end
end
