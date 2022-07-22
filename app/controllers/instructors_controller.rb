class InstructorsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        render json: Instructor.all
    end

    def show
        render json: find_instructor
    end
    
    def create 
        instructor = Instructor.create(instructor_params)
        render json: instructor, status: :created
    end

    def update
        instructor = find_instructor.update(instructor_params)
        render json: instructor, status: :accepted

    end

    def destroy
        instructor = find_instructor
        instructor.destroy
        head :no_content
    end

    private

    def find_instructor
        Instructor.find(params[:id])
    end

    def render_not_found_response(exception)
        render json: {error: "Instructor not found"}, status: :not_found
    end

    def instructor_params
        params.permit(:name)
    end

end