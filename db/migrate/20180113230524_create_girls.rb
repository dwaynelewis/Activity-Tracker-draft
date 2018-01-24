class CreateGirls < ActiveRecord::Migration[5.1]
  def change
    create_table :girls do |t|
      t.string :name
      t.integer :rating

      t.timestamps
    end
  end
end
