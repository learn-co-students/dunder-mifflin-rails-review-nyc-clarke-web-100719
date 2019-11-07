class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
    render :new
  end

  def create
    @employee = Employee.create(employee_params)

    if @employee.valid? 
      redirect_to dog_path(@employee.dog)
    else
      flash[:errors] = @employee.errors.full_messages 
      redirect_to new_employee_path
    end
  end


  private 

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url ,:dog_id)
  end

end
