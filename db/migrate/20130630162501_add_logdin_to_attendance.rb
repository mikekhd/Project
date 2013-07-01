class AddLogdinToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :logdin, :boolean
  end
end
