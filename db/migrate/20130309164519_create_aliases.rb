class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.string :email
      t.reference :user
      t.boolean :verified
      t.string :secret

      t.timestamps
    end
    add_index :aliases, :secret, :unique => true
  end
end
