class CreateCheckLists < ActiveRecord::Migration[5.1]
  def change
    create_table :check_lists do |t|
      t.string :title
      t.references :task, foreign_key: true, index: true

      t.timestamps
    end
  end
end
