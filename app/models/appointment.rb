class Appointment < ApplicationRecord

  belongs_to :housing
  belongs_to :customer
  

end
