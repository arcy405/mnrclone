module API
    module V1
        class Donors < Grape::API
            include API::V1::Defaults
            resource :donors do
                desc "Return all donors of kanchanpur"
                params do
                    requires :district, type: String, desc: 'District Name'
                end
                route_param :district do
                    get do
                        district = params[:district]
                        Donor.order(:blood_group).where("status=? AND lower(district)=?","Available", district.downcase)
                    end 
                end
            end
        end
    end
end