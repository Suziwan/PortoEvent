class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def new
    @attendance = Attendance.new
  end
end
