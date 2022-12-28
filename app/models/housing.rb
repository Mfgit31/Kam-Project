class Housing < ApplicationRecord

    has_many :appointments, dependent: :destroy
    has_many :customers, through: :appointments
    
end
