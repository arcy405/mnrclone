class TelephoneDirectoryController < ApplicationController
  def index
  	@telephone_numbers= Listing.order(:name).group_by{|u| u.name[0].upcase}
  	@important_numbers = EmergencyNumber.order(:name)
  end
end
