class AddColCompToTodoList < ActiveRecord::Migration[5.1]
  def change
    add_column :todo_lists, :complete, :boolean
  end
end
