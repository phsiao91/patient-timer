class ProceduresController < ApplicationController

    def show
        render json: Procedure.all, status: :ok
    end
end
