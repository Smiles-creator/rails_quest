class CreateAgents < ActiveRecord::Migration[8.1]
  def change
    create_table :agents do |t|
      t.string :codename, null: false
      t.integer :level, null:false
      t.boolean :active, default: false, null: false

      t.timestamps
       t.index :codename, unique: true 
    end
  end
end
