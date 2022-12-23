class Customer < ApplicationRecord

    has_many :appointments
    has_many :housings, through: :appointments
    
    validates_presence_of :name, :phone, :address, :email, :age
    validates :age, numericality: { greater_than: 17 }
    validates :phone, length: { minimum: 10, maximum: 12 }

end
