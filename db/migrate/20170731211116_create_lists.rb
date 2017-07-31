class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.references :board, foreign_key: true, index: true

      t.timestamps
    end
  end
end
