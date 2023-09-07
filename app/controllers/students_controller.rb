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
  end
    def show
      @student = Student.find(params[:id])
    end


  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(params.require(:student).permit(:first_name,:last_name,:email,:rank,:year_of_passing))
      flash[:notice] = "Update #{@student.first_name} successfully"
      redirect_to students_path
    else
      render "edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = "Deleted the record"
    redirect_to students_path
  end

end