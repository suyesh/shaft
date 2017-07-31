class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task_key
      t.string :title
      t.text :description
      t.datetime :due_date
      t.timestamp :archive
      t.references :list, foreign_key: true, index: true

      t.timestamps
    end
  end
end
