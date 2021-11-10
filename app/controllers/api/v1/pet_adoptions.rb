module API
    module V1
        class PetAdoptions < Grape::API
            include API::V1::Defaults
            resource :pet_adoptions do
                desc "Return all PetAdoptions"
                    get do
                        PetAdoption.order(:created_at)
                    end
            end
        end
    end
end