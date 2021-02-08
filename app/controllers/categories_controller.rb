class CategoriesController < ApplicationController
  
  def home
    #カテゴリを全件取得
    @category = Category.all
    
    #categoryテーブルのブランクチェックをして空かnilならカテゴリの作成ページへ
    if @category.blank?
      #render("new")
    end
  end
  
  def new
    @category = Category.new
    @category.todo_lists.build
  end
  
  def create
    category = Category.new(category_params)
    
    if category.save
      redirect_to("/")
      flash[:success] = "Created new Category!"
    else
      redirect_back(fallback_location: "create")
    end
  end
  
  def editPage
    #テキストエリアの初期値用に編集前の内容を取得
    @category = Category.find(params[:id]).category
  end
  
  def edit
    @category = Category.find_by(id: params[:id])
    if @category.update_attributes(category: params[:editCategory])
      flash[:success] = "EditSuccess!"
      redirect_to ("/")
    else
      redirect_back(fallback_location: "edit")
    end
  end
  
  def destroy
    #idを基にcategoryテーブルから削除対象を取得
    category = Category.find(params[:id])
    #取得できてるなら削除してホームに飛ぶ。
    if !category.blank?
      category.destroy
      flash[:success] = "DeleteSuccess!"
      #リロードの動き
      #redirect_to("/")
      redirect_back(fallback_location: "/")
    end
  end

  private

    def category_params
      #params.require(:category).permit(:category, todo_lists_attributes:[:task, :category_id])
      params.require(:category).permit(:category, todo_lists_attributes:[:task, :id])
    end
    
    
end
