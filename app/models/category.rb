class Category < ApplicationRecord
  #カテゴリカラムに空白は認めない
  validates :category, presence: true
  #カテゴリモデルは複数のtodo_listを持ち、カテゴリが削除されたときに紐づくtaskも削除される。
  has_many :todo_lists, dependent: :destroy, inverse_of: :category
  accepts_nested_attributes_for :todo_lists, reject_if: proc { |attributes| attributes["category_id"].blank? }
end
