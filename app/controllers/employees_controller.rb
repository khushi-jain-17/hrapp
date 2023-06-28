class EmployeesController < ApplicationController

def index
   @employees=Employee.all
end

def new
   @employee=Employee.new
end

def create
   @employee = Employee.new(fname: params[:employee][:fname], lname: params[:employee][:lname], email: params[:employee][:email],city: params[:employee][:city], state: params[:employee][:state],country: params[:employee][:country], pincode: params[:employee][:pincode], address: params[:employee][:address] )

   if @employee.save
      redirect_to employees_path, notice: 'Employee has been created successfully'
   else
      render :new
   end
end
private

def employee_params
   params.reqire(:employee).permit(:fname,:lname,:email,:city,:state,:country,:pincode,:address )
end
end


