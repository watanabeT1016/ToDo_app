#class TodoList < ApplicationRecord
#  #タスクに空白は認めない
#  validates :task, presence: true
#  #カテゴリIDに空白を認めない(カテゴリIDはカテゴリテーブルのIDと紐づいている)
#  validates :category_id, presence: true
#  #completeカラムの初期値にfalseを設定
#  validates :complete, :boolean, default: false
  
#  #カテゴリとタスクは1対多の関係を持つ
#  belongs_to :category, inverse_of: :todo_lists, optional: true
#  validates_presence_of :category
#end

class TodoList < ApplicationRecord
  validates :task, presence: true
  validates :complete, :boolean, default: false
  belongs_to :category
end 