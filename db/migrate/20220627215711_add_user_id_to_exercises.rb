class AddUserIdToExercises < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :user_id, :integer
  end
end
