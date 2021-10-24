module API
    module V1
        class Vacancies < Grape::API
            include API::V1::Defaults
            resource :vacancies do
                desc "Return all Vacancies"
                        get do
                            Vacancy.all
                        end 
            end
        end
    end
end