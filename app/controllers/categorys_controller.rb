class CategorysController < ApplicationController
  
  def home
    #カテゴリを全件取得
    @category = Category.all
    
    #categoryテーブルのブランクチェックをして空かnilならカテゴリの作成ページへ
    if @category.blank?
      render("createPage")
    end
  end
  
  def createPage
  end
  
  def create
    category = Category.create(category: params[:newCategory])
    if category.save
      redirect_to("/")
      flash[:success] = "Created new Category!"
    else
      render("createPage")
    end
  end
  
  def editPage
    #テキストエリアの初期値用に編集前の内容を取得
    @category = Category.find(params[:id]).category
  end
  
  def edit
    category = Category.find_by(id: params[:id])
    category.update_attributes(category: params[:editCategory])
    redirect_to ("/")
  end
  
  def destroy
    #idを基にcategoryテーブルから削除対象を取得
    category = Category.find(params[:id])
    #取得できてるなら削除してホームに飛ぶ。
    if !category.blank?
      category.destroy
      #リロードの動き
      #redirect_to("/")
      redirect_back(fallback_location: "/")
    end
  end
  
end
