class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(post_params(:first_name, :last_name))
        if @student.save
            redirect_to @student
        end
    end
    
    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.update(post_params(:first_name, :last_name))
        redirect_to @student
    end

    private
        
    def post_params(*args)
        params.require(:student).permit(*args)
    end
end 