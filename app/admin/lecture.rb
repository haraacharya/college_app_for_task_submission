ActiveAdmin.register Lecture do


  permit_params :lecture_name, :instructor_name, :course_day_time, user_ids:[]

  form do |f|
    f.inputs do
      f.input :lecture_name
      f.input :instructor_name
      f.input :course_day_time
      f.input :users, as: :check_boxes, member_label: :email
    end
    f.actions
  end


end
