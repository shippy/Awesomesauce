class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :body
      t.reference :user

      t.timestamps
    end
  end
end
