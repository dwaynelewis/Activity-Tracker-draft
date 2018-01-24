class CreateDadaTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :dada_tasks do |t|
      t.date :Period
      t.float :Hours
      t.text :Description

      t.timestamps
    end
  end
end
