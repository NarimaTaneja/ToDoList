Rails.application.routes.draw do
  resources :tasks do
  	resources :task_items do
  		member do
  			patch :completed
  		end
  	end		
  end
  root 'tasks#index'  
end
