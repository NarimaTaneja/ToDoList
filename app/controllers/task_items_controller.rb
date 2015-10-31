class TaskItemsController < ApplicationController
	before_action :set_task
	

	def create
		@task_item = @task.task_items.create(task_item_params)
		redirect_to @task
	end

	def destroy
		@task_item = @task.task_items.find(params[:id])
		if @task_item.destroy
			flash[:success] = "Task item was deleted"
		else
			flash[:error] = "Task item could not be deleted"	
		end
		redirect_to @task
	end

	private
	def set_task
		@task = Task.find(params[:task_id]) 
	end

	def task_item_params
		params[:task_item].permit(:content)
	end
end
