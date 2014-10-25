class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :response_to_assignment
      t.references :user, index: true
      t.references :assignment, index: true

      t.timestamps

    end
  end
end
