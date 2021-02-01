class Category < ApplicationRecord
  #カテゴリカラムに空白は認めない
  validates :category, presence: true
  #カテゴリモデルは複数のtodo_listを持ち、カテゴリが削除されたときに紐づくtaskも削除される。
  has_many :todo_lists, dependent: :destroy
end
