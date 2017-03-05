class AddTitleToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :title, :string
  end
end
