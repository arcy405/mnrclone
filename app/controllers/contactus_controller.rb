class ContactusController < ApplicationController
  def new
    @listingreq=Listingrequest.new
  end
end
