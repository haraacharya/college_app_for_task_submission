class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :lecture_name
      t.string :instructor_name
      t.string :course_day_time
    end
  end
end
