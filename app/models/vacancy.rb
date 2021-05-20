class Vacancy < ApplicationRecord
	extend FriendlyId
  	friendly_id :job_title, use: :slugged

  	include ActiveModel::Validations
    validates_presence_of :about_company, :job_title, :job_category, :job_level, :no_of_vacancy, :employment_type,:offered_salary,:apply_before,:education_level,:experience_required,:professional_skill,:job_desciption,:location,:company_name,:contactnumber,:emailid
    validates_numericality_of :contactnumber
    validates_length_of :contactnumber, is: 10

end
