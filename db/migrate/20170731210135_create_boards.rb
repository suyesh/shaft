class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :description
      t.integer :owner_id

      t.timestamps
    end
    add_index :boards, :owner_id
  end
end
