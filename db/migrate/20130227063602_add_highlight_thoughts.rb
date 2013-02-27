class AddHighlightThoughts < ActiveRecord::Migration
  def change
    add_column :thoughts, :highlight, :boolean
  end
end
