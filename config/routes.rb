
Rails.application.routes.draw do
  resources :tasks do
  	resources :task_items
  end
  root 'tasks#index'  
end
