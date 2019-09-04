class AddUserToTodolists < ActiveRecord::Migration[5.1]
  def change
    add_reference :todolists, :user, index: true, foreign_key: true
  end
end
