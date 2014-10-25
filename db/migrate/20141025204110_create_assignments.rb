class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :question
      t.string :hint
      t.references :lecture, index: true

      t.timestamps
    end
  end
end
