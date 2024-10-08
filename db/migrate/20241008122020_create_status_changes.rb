class CreateStatusChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :status_changes do |t|
      t.string :previous_status
      t.string :new_status
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
