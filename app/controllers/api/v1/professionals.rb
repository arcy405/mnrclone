module API
    module V1
        class Professionals < Grape::API
            include API::V1::Defaults
            resource :professionals do
                desc "Return all tags"
                        get do
                            Professional.all
                        end 
            end
        end
    end
end