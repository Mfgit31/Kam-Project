class Customer < ApplicationRecord
    #Activating Bycrypt for our :password_digest
    has_secure_password #
    
    #macros - associations & relationships
    has_many :appointments, dependent: :destroy
    has_many :housings, through: :appointments
    

    #validations
    #no need to validate "has_secure_password"
    validates_presence_of :name, :username, :phone, :address, :email, :age
    validates :age, numericality: { greater_than: 17 }
    validates :phone, length: { minimum: 10, maximum: 12 }



end
 