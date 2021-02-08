Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "categories#home"
  get "create" => "categories#create"
  get "new" => "categories#new"
  get "categories/editPage/:id" => "categories#editPage"
  get "categories/edit/:id" => "categories#edit"
  delete "categories/delete/:id" => "categories#destroy"
  
  get "create/:id" => "todo_list#create"
  get "new/:id" => "todo_list#new"
  get "todoList/editPage/:id" => "todo_list#editPage"
  get "todoList/edit/:id" => "todo_list#edit"
  get "todoList/completeSetTrue/:id" => "todo_list#completeSetTrue"
  get "todoList/completeSetFalse/:id" => "todo_list#completeSetFalse"
  delete "todoList/delete/:id" => "todo_list#destroy"
  
  resources :categories
end
