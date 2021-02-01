class CategorysController < ApplicationController
  
  def home
    #カテゴリを全件取得
    @category = Category.all
    
    #categoryテーブルのブランクチェックをして空かnilならカテゴリの作成ページへ
    if @category.blank?
      render("create")
    end
  end
  
  def create
  end
  
end
