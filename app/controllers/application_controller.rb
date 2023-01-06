class ApplicationController < ActionController::API
  include ActionController::Cookies
  #rescue_from
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  #before_action
  before_action :authorized_customer

  #current_customer
  # def current_customer
  #   loggedInCustomer = Customer.find_by(id: session[:customer_id])
  # end



  private
  
  def render_unprocessable_entity(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end

  def render_not_found(error)
    render json: {errors: {error.model => "Not Found"}}, status: :not_found
  end

  def authorized_customer
    render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :customer_id
  end

end
