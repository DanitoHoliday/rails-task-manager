Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #list all tasks
  get "/tasks", to: "tasks#index", as: :tasks

   #create task
  post "/tasks", to: "tasks#create"
  #new form
  get "/tasks/new", to: "tasks#new", as: :new_task

  #edit post
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task

  #show individual task
  get "/tasks/:id", to: "tasks#show", as: :task

  #update post
  patch "/tasks/:id", to: "tasks#update", as: :update_task

  #delete post
  delete "/tasks/:id", to: "tasks#destroy"
end
