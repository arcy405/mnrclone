module API
    module V1
      class Base < Grape::API
        mount API::V1::Tags
        mount API::V1::Listings
      end
    end
  end