class InstructorsController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        instructors = Instructor.all 
        render json: instructors
    end

    def show
        instructor = find_instructor
        render json: instructor
    end

    def create 
        instructor = Instructor.create!(instructor_params)
        render json: instructor
    end

    def update
        instructor = find_instructor
        instructor.update!(instructor_params)
        render json: instructor
    end

    def destroy
        instructor = find_instructor
        instructor.destroy
        head :no_content
    end


    private

    def instructor_params
        params.permit(:name)
    end

    def find_instructor
        Instructor.find(params[:id])
    end

    def record_invalid(invalid)
        render json: {errors: invalid.record.errors.messages }, status: :unprocessable_entity
    end

end
