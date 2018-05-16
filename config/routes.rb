Rails.application.routes.draw do
  #display all tasks
  get '/tasks', to: 'tasks#index'
  #new
  get '/tasks/new', to: 'tasks#new', as: :new_task
  #display specific task
  get '/tasks/:id', to: 'tasks#show', as: :task
  #create new task
  post '/tasks', to: 'tasks#create'

  #edit one task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update', as: :update_task

  #delete a restaurant
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete_task
end
