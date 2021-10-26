class MarketplaceSerializer < ActiveModel::Serializer 
    attributes :id, :prod_name, :seller_name, :price, :phone, :description, :market_place_images
end