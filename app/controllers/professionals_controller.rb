class ProfessionalsController < ApplicationController
	def index
		@professions = Profession.order(:name)
		@professionals = Professional.order(:name)
	end
	def new
		@professional= Professional.new
	end
	def create
        @professional = Professional.new(professional_params)
    
          respond_to do |format|
             if @professional.save
              if user_signed_in?
                  current_user.gamification.create!(points:10)
               end
              format.html { redirect_to professionals_path, notice: 'Professional was successfully created.' }
            else
              format.html { render :new }
          end
        end
  end
    
      private
        # Only allow a list of trusted parameters through.
        def professional_params
          params.require(:professional).permit(:name, :address, :image,:image_cache, :contact,:profession_id)
        end
end
