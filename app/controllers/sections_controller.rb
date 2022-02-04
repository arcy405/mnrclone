class SectionsController < ApplicationController
    before_action :set_section, only: [:update, :destroy]

    def index
        @sections=Section.order("created_at DESC")
    end

    def show
      @section = Section.find(params[:id])
    end

    def new
        @doc_num = section.last
        @section = Section.new;  
        @section.document.build
    end


    def create
      @section = Section.new(section_params).includes(:document)
    
        respond_to do |format|
          if @section.save
            format.html { redirect_to sections_path, notice: 'section was successfully created.' }
            format.js
          else
            format.html { render :new }
          end
        end
      end
    
  def edit
    @section = Section.find(params[:id])
  end

    def update
    respond_to do |format|
        if @section.update(section_params)
        format.html { redirect_to sections_path, notice: 'section was successfully updated.' }
        else
        format.html { render :edit }
        end
    end
    end

    def destroy
        @section.destroy
        respond_to do |format|
          format.html { redirect_to sections_url, notice: 'section was successfully destroyed.' }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def section_params
      params.require(:section).permit(:section_name, document_attributes: [:title, :doc_image, :doc_pdf, :doc_text])
    end
end
