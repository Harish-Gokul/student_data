class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name,:last_name,:year_of_passing,:rank,:email))
    if @student.save
      flash[:notice] = "Created successfully"
      redirect_to students_path
    else
      render "new"
    end

    def show
      @student = Student.find(params[:id])
    end
  end
end