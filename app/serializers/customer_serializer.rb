class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :email, :phone, :age

end
