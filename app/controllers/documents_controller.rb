class DocumentsController < ApplicationController
  before_action :set_document, only: [:update, :destroy]

    def index
      @documents = Document.all

        @document = Document.new
    end

    def show
      
    end

    def new
    end


    def create
      @document = Document.new(document_params)
    
        respond_to do |format|
          if @work.save
            format.html { redirect_to documents_path, notice: 'document was successfully created.' }
          else
            format.html { render :new }
          end
        end
      end
    
  def edit
    @document = Document.find(params[:id])
  end

    def update
    respond_to do |format|
        if @document.update(document_params)
        format.html { redirect_to documents_path, notice: 'document was successfully updated.' }
        else
        format.html { render :edit }
        end
    end
    end

    def destroy
        @document.destroy
        respond_to do |format|
          format.html { redirect_to documents_url, notice: 'document was successfully destroyed.' }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def document_params
      params.require(:document).permit(:title, :doc_image, :doc_pdf, :doc_text)
    end

end
