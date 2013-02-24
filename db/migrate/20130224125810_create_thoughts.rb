class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :body
      t.references :user
      t.datetime :date

      t.timestamps
    end
    add_index :thoughts, :user_id
  end
end
