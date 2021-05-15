class VacanciesController < ApplicationController
  def index
    @vacancies=Vacancy.all.order("created_at DESC")
  end

  def show
    @vacancy = Vacancy.find(params[:id]) 
    @job_relevent=Vacancy.where('job_category=? AND id !=?',@vacancy.job_category,params[:id]).limit(6)
    
  end

  def new
    @vacancy=Vacancy.new
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)
    respond_to do |format|
        if NewGoogleRecaptcha.human?(
          params[:new_google_recaptcha_token],
          "vacancy",
          NewGoogleRecaptcha.minimum_score,
          @post
        ) && @vacancy.save
            if user_signed_in?
              current_user.gamification.create!(points:5)
            end
            format.html { redirect_to vacancies_path notice: 'vacancy was successfully created.' }
          else
            format.html { render :new }
          end
    end
  end

  

  private
    # Only allow a list of trusted parameters through.
    def vacancy_params
      params.require(:vacancy).permit(:about_company, :job_title, :job_category, :job_level, :no_of_vacancy, :employment_type, :offered_salary, :apply_before, :education_level, :experience_required, :professional_skill, :other_specification, :job_desciption, :created_at, :company_name, :location, :contactnumber, :emailid)
    end

end



