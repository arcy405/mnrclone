class VacanciesController < ApplicationController
  def index
    @vacancies=Vacancy.all.order("created_at DESC")
    @vacancies_aviation=Vacancy.where('job_category=?',"Aviation").order("created_at: :DESC")
    @vacancies_arts=Vacancy.where('job_category=?',"Arts").order("created_at: :DESC")
    @vacancies_business=Vacancy.where('job_category=?',"Business").order("created_at: :DESC")
    @vacancies_education=Vacancy.where('job_category=?',"Education").order("created_at: :DESC")
    @vacancies_law_enforcement=Vacancy.where('job_category=?',"Law Enforcement").order("created_at: :DESC")
    @vacancies_media=Vacancy.where('job_category=?',"Media").order("created_at: :DESC")
    @vacancies_medical=Vacancy.where('job_category=?',"Medical").order("created_at: :DESC")
    @vacancies_service_industry=Vacancy.where('job_category=?',"Service Industry").order("created_at: :DESC")
    @vacancies_technology=Vacancy.where('job_category=?',"Technology").order("created_at: :DESC")
    @vacancies_others=Vacancy.where('job_category=?',"Others").order("created_at: :DESC")
    
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
      params.require(:vacancy).permit(:about_company, :job_title, :job_category, :job_level, :no_of_vacancy, :employment_type, :offered_salary, :apply_before, :education_level, :experience_required, :professional_skill, :other_specification, :job_desciption, :created_at, :company_name, :location, :contactnumber, :emailid)
    end

end



