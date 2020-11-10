Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# First, add a new route to list the tasks
  # get "index", to: "tasks#index"
  # # create a new post => doit le créer au-dessus du new route
  # get "tasks/new", to: "tasks#new"
  # post "tasks", to: "tasks#create"
  # # add a new route
  # get "tasks/:id", to: "tasks#show",as: :task

  # get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit

  # patch "tasks/:id", to: "tasks#update"

  # delete "tasks/:id", to: "tasks#destroy"
  resources :tasks

end
