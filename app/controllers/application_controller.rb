class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_not_valid

    private

    def record_not_valid( invalid )
        render json: { errors: invalid.record.errors.full_messages }, status: 422
    end

    def record_not_found( invalid )
        render json: { error: "#{invalid.model} not found" }, status: 404
    end
end
