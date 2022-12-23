class Appointment < ApplicationRecord

  belongs_to :housing
  belongs_to :customer
  

  def amira 
    " :) "
  end

  def marcos 
    'hello'
  end




end
