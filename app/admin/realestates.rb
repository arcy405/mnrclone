ActiveAdmin.register Realestate do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :seller_name, :seller_phone, :price, :description, :photo, :ptype ,:propertyname, :address, :bedroom ,:kitchen,:bathroom
  #
  # or
  #
  # permit_params do
  #   permitted = [:seller_name, :seller_phone, :price, :description, :photo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
