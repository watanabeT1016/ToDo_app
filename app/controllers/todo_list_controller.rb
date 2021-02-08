class TodoListController < ApplicationController
  
  def new
  end
  
  def create
    task = TodoList.create(task: params[:newTask], category_id: params[:id])
    if task.save
      flash[:success] = "Created new Task!"
      #ページリロード
      redirect_back(fallback_location: "/create/:id")
    else
      render("new")
    end
  end
  
  def editPage
    #テキストエリアの初期値用に編集前の内容を取得
    @task = TodoList.find(params[:id]).task
  end
  
  def edit
    @task = TodoList.find_by(id: params[:id])
    if @task.update_attributes(task: params[:editTask])
      flash[:success] = "EditSuccess!"
      redirect_to ("/")
    else
      redirect_back(fallback_location: "edit")
    end
    
  end
  
  def completeSetTrue
    task = TodoList.find_by(id: params[:id])
    task.update_attributes(complete: true)
    redirect_back(fallback_location: "/")
  end
  
  def completeSetFalse
    task = TodoList.find_by(id: params[:id])
    task.update_attributes(complete: false)
    redirect_back(fallback_location: "/")
  end
  
  def destroy
    #IDを基にTodoListテーブルからタスクを取得
    task = TodoList.find(params[:id])
    #取得できてるなら削除。
    if !task.blank?
      task.destroy
      flash[:success] = "DeleteSuccess!"
      #リロードの動き
      #redirect_to("/")
      redirect_back(fallback_location: "/")
    end
  end
end
