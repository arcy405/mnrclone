module API
    module V1
        class Marketplaces < Grape::API
            include API::V1::Defaults
            resource :marketplaces do
                desc "Return all Marketplaces"
                    get do
                        Marketplace.order(:created_at)
                    end
            end
        end
    end
end