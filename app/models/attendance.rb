class Attendance < ActiveRecord::Base
  attr_accessible :login_time, :logout_time, :logdin, :employee_id
   belongs_to :employee
end
