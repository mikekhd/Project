class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_employee
    # find the user by user_id stored in the session
    @current_employee||= Employee.find(session[:employee_id]) if session[:employee_id].present?
  end
  def current_ability
  @current_ability ||= Ability.new(current_employee)
end
  helper_method :current_user
  def admin?
    current_employee && current_employee.admin?
  end

  helper_method :admin?
end
