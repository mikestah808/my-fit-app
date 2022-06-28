class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name 
      t.string :primary_muscle 
      t.string :category 
      t.integer :sets
      t.integer :reps
    end
  end
end
