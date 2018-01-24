class CreateYoungAmericanas < ActiveRecord::Migration[5.1]
  def change
    create_table :young_americanas do |t|
      t.date :period
      t.float :hours
      t.text :description

      t.timestamps
    end
  end
end
