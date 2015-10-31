class TasksController < ApplicationController
 before_action :find_task, only: [:show, :destroy, :edit, :update]
 
 def index
 	@tasks = Task.all.order("created_at DESC")
 end

 def new 
 	@task = Task.new
 end

 def show
 end

 def create
 	@task = Task.new(task_params)
 	if @task.save
 		redirect_to @task, notice: "Successfully created new task"
 	else
 		render 'new'
 	end 
 end

 def edit
 end

 def update
 	if @task.update(task_params)
 		redirect_to @task, notice: "Successfully updated task"
 	else 
 		render 'new'
 	end
 end

 def destroy
 	@task.destroy
 	redirect_to root_path 
 end

 def find_task
	@task = Task.find(params[:id])
 end

 private 
 	def task_params
 		params.require(:task).permit(:title,:description)
 	end

end
