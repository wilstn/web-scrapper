class AddResultToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :result, :text
  end
end
