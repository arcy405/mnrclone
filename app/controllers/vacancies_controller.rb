class VacanciesController < ApplicationController
  def index
    @vacancies=Vacancy.all
  end

  def new
    @vacancy=Vacancy.new
  end


  def create
    @vacancy = Vacancy.new(vacancy_params)

    respond_to do |format|
      if @vacancy.save
        format.html { redirect_to vacancies_path notice: 'vacancy was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  private
    # Only allow a list of trusted parameters through.
    def vacancy_params
      params.require(:vacancy).permit(:about_company, :job_title, :job_category, :job_level, :no_of_vacancy, :employment_type, :offered_salary, :apply_before, :education_level, :experience_required, :professional_skill, :other_specification, :job_desciption, :created_at)
    end

end



