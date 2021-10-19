module API
    module V1
        class Listings < Grape::API
            include API::V1::Defaults
            resource :listings do
                params do
                    requires :id, type: Integer, desc: 'Tag ID.'
                end
                desc "Return all tags"
                    route_param :id do
                        get do
                            tag = Tag.find(params[:id])
                            tag.listings.all
                        end 
                    end
            end
        end
    end
end