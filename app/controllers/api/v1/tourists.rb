module API
    module V1
        class Tourists < Grape::API
            include API::V1::Defaults
            resource :tourists do
                desc "Return all Tourists"
                    get do
                        Tourist.order(:created_at)
                    end
            end
        end
    end
end