class CreateTaskMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :task_memberships do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :task, foreign_key: true

      t.timestamps
    end
  end
end
