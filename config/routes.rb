Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "categorys#home"
  get "create" => "categorys#create"
  get "createPage" => "categorys#createPage"
  get "category/editPage/:id" => "categorys#editPage"
  get "category/edit/:id" => "categorys#edit"
  delete "category/delete/:id" => "categorys#destroy"
  
  get "create/:id" => "todo_list#create"
  get "createPage/:id" => "todo_list#createPage"
  get "todoList/editPage/:id" => "todo_list#editPage"
  get "todoList/edit/:id" => "todo_list#edit"
  delete "todoList/delete/:id" => "todo_list#destroy"
  
end
