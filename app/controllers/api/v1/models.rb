module API
    module V1
        class Models < Grape::API
            include API::V1::Defaults
            resource :models do
                desc "Return all Models"
                    get do
                        Model.order(:name)
                    end
            end
        end
    end
end