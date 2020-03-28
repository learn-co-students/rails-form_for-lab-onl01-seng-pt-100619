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
        @student = Student.new
        @student.title = params[:title]
        @student.room_number = params[:room_number]
        @student.save
        redirect_to school_class_path(@student)
    end


    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(title :params[:school_class][:title], room_number: params[:scool_class][:room_number])
    end


end
