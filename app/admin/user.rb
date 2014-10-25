ActiveAdmin.register User do


  permit_params :email, :password, :password_confirmation, lecture_ids: []


   index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :lectures, as: :check_boxes, member_label: :lecture_name
    end

    f.actions
  end


end
