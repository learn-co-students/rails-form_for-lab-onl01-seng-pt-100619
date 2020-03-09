class SchoolClassesController < ApplicationController
    def create 
        @school_class = SchoolClass.new(title: params.permit(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def new
        
    end

    def show

    end

    def edit 

    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:post).permit(:title))
        redirect_to school_class_path(@school_class)
    end


end