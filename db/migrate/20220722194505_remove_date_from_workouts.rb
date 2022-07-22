class RemoveDateFromWorkouts < ActiveRecord::Migration[6.1]
  def change
    remove_column :workouts, :date, :datetime
  end
end
