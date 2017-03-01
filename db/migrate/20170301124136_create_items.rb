class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :link
      t.text :selector
      t.text :extra

      t.timestamps
    end
  end
end
