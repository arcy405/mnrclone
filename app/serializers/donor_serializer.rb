class DonorSerializer < ActiveModel::Serializer 
    attributes :id, :name, :address, :phone1, :blood_group, :status, :gender, :age, :district
end