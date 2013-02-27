class CreateCute < ActiveRecord::Migration
  def up
    create_table :cutes do |t|
      t.string :url
      t.string :type
      t.text :description
      t.integer :number
 
      t.timestamps
    end
  end
 
  def down
    drop_table :cutes
  end
end
