class StudentsController < ApplicationController


    def index
        students = Student.all
        render json: students
    end

    def show 
        student = Student.find(params[:id])
        render json: student
    end

    def create
        student = Student.create(name: params[:name], major: params[:major], age: params[:age], instructor_id: params[:instructor_id])
        render json: student
    end
end
