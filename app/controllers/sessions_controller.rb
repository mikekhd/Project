class SessionsController < ApplicationController
  def new

  end

  def create
    #fetch the employee email & password from params
    session_employee = params[:session]
    # Find the employee by email

    employee = employee.find_by_email(session_employee[:email])
    #check if the password is correct
    # if password is correct -> show a welcome message + redirect to account section
    if employee and employee.authenticate(session_employee[:password])
      session[:employee_id] = employee.id
      redirect_to my_account_url, notice: "Logged in successfully."

    else
      # if there is no employee by that email show error
      # or  if password is wrong -> show error
      redirect_to login_url, notice: "Invalid email/password."
    end
  end

  def destroy
    #employee_id in session to nil
    session[:employee_id] = nil
    @current_employee = nil

    #redirect

    redirect_to root_url, notice: "Logged out."

  end
end
