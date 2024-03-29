ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params [:email, :password, :password_confirmation] 

  form do |f|
      f.inputs "User" do
        f.input :email
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
end


