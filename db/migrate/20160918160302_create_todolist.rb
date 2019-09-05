class CreateTodolist < ActiveRecord::Migration[5.1]
  def change
    create_table :todolists do |t|
      t.string :name
      t.string :status

      t.timestamps null: false
    end
  end
end
