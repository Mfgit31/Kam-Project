class CustomerShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :email, :phone, :age :username

  #nested data
  has_many :appointments
  has_many :housings


end

