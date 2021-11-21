class HomeController < ApplicationController
  def index
    @students = Student.all
  end

  def student_details
    @student = Student.find(params[:student_id])
    @courses = Course.where("student_id = :id",{id: params[:student_id]})
  end
end
