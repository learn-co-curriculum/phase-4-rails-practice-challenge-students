class StudentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        render json: Student.all
    end

    def show
        student = find_student
        render json: student
    end
    
    def create 

    end

    def update

    end

    def destroy
        
    end

    def find_student
        Student.find(params[:id])
    end

    def render_not_found_response(exception)
        render json: {error: "Student not found"}, status: :not_found
    end



end