class CreateBoardMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :board_memberships do |t|
      t.belongs_to :user, foreign_key: true, index: true
      t.belongs_to :board, foreign_key: true, index: true

      t.timestamps
    end
  end
end
