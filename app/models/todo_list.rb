class TodoList < ApplicationRecord
  #タスクに空白は認めない
  validates :task, presence: true
  #カテゴリIDに空白を認めない(カテゴリIDはカテゴリテーブルのIDと紐づいている)
  validates :category_id, presence: true
  
  #カテゴリとタスクは1対多の関係を持つ
  belongs_to :category
end
