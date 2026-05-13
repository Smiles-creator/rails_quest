class CreateSkills < ActiveRecord::Migration[8.1]
  def change
    create_table :skills do |t|
      t.string :name, null:false
      t.string :category, null:false

      t.timestamps
       t.index :name, unique: true 
    end
  end
end
