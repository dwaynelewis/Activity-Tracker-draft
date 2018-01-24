class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.date :period
      t.float :coding
      t.text :description

      t.timestamps
    end
  end
end
