class InstructorsController < ApplicationController
   

    def index
        render json: Instructor.all, adapter: nil, 
            except: [:created_at, :updated_at], status: 200
    end

    def show
        render json: Instructor.find( params[:id] ), status: 302
    end

    def create
        render json: Instructor.create!( instructor_params )
    end

    def update
        i = Instructor.find( params[:id] )
        i.update!( instructor_params )
        render json: i, status: :ok
    end

    def destroy
        i = Instructor.find( params[:id] )
        i.destroy
        head :no_content
    end

    private

    def instructor_params
        params.permit( :name )
    end


end
