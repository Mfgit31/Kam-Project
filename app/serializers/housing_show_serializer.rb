class HousingShowSerializer < ActiveModel::Serializer
  attributes :id, :address, :image, :overview, :price

  # has_many :appointments
  # has_many :customers

end
