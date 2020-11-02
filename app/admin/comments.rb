ActiveAdmin.register Comment, :as => "PostComment" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :body, :name, :commentable_id, :commentable_type
  #
  # or
  #
  # permit_params do
  #   permitted = [:body, :commentable_id, :commentable_type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
