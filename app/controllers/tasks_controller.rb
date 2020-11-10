class TasksController < ApplicationController
  # Then, add a controller action and its view.
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end
  # add a new controller action
  def show
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  def edit
  end
  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end
  def destroy
    @task.destroy

    # no need for app/views/tasks/destroy.html.erb
    redirect_to tasks_path
  end

    private

    def task_params
      params.require(:task).permit(:title, :details)
    end
    def set_task
    end
end
