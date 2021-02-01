class CreateTodoLists < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_lists do |t|
      t.string :task
      t.integer :category_id

      t.timestamps
    end
  end
end
