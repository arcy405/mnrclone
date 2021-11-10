module API
    module V1
        class Realestates < Grape::API
            include API::V1::Defaults
            resource :realestates do
                desc "Return all Realestates"
                        get do
                            Realestate.all
                        end 
            end
        end
    end
end