class VacancySerializer < ActiveModel::Serializer 
    attributes :id, :about_company, :job_title, :job_category, :job_level, :no_of_vacancy,:employment_type,:offered_salary,:apply_before,:education_level,:experience_required, :professional_skill, :job_desciption,:location,:company_name,:contactnumber,:emailid
end