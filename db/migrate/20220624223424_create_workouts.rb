class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :title
      t.datetime :date
      t.string :level
      t.timestamps
    end
  end
end
