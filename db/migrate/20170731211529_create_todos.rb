class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :item
      t.boolean :done, default: false
      t.references :check_list, foreign_key: true, index: true

      t.timestamps
    end
  end
end
