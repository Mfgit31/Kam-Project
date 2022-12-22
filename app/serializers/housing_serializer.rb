class HousingSerializer < ActiveModel::Serializer
  attributes :id, :address, :image, :overview, :price
end
