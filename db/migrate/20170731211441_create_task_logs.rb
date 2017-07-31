class CreateTaskLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :task_logs do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :total_time
      t.references :task, foreign_key: true, index: true

      t.timestamps
    end
  end
end
