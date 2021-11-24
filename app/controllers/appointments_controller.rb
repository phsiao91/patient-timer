class AppointmentsController < ApplicationController

    def show
        render json: @current_user.appointments.all, status: :ok
    end

    def index
        render json: @current_user.appointments.last, status: :ok
    end

    def create
        app = @current_user.appointments.create(app_params)
        if app.valid?
            render json: app, status: :created
        else
            render json: {error: 'please fill out all forms'}, status: :expectation_failed
        end
    end

    private

    def app_params
        params.permit(:time, :user_id, :staff_id)
    end
end
