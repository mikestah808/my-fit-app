class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :name
      t.integer :age
      t.integer :weight 
      t.timestamps
    end
  end
end
