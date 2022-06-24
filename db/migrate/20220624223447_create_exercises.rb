class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :name 
      t.string :primary_muscle 
      t.string :category 
      t.integer :user_id
      t.integer :workout_id 
    end
  end
end
