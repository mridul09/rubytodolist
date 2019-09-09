class Todolist < ActiveRecord::Base
  belongs_to :user

  STATUS = ["New", "InProgress", "Done"]
end