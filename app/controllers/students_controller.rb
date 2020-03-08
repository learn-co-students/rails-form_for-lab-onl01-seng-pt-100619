class StudentsController < ApplicationController
    def create 
        @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
        redirect_to student_path(@student)
    end

    def new

    end

    def show

    end

    def edit 

    end

    def update
        
    end

end