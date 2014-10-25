ActiveAdmin.register Assignment do


  permit_params :question, :hint, :lecture_id
  form do |f|
    f.inputs do
      f.input :lecture_id, :label => 'Lecture', :as => :select, :collection => Lecture.all.map{|l| ["#{l.lecture_name}", l.id]}
      f.input :question
      f.input :hint
    end
    f.actions
  end


end
