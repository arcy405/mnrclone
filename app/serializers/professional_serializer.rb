class ProfessionalSerializer < ActiveModel::Serializer 
    attributes :id, :name, :contact, :address, :profession
end