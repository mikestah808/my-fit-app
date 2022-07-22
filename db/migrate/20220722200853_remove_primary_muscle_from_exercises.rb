class RemovePrimaryMuscleFromExercises < ActiveRecord::Migration[6.1]
  def change
    remove_column :exercises, :primary_muscle, :string
  end
end
