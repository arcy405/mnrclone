module API
    module V1
        class Tags < Grape::API
            include API::V1::Defaults
            resource :tags do
            desc "Return all tags"
                get "" do
                    Tag.order(:title_en)
                end 
            end
        end
    end
end