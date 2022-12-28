class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time
  
  has_one :housing
  has_one :customer

  
end
