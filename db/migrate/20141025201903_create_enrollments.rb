class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :user, index: true
      t.references :lecture, index: true
    end
  end
end
