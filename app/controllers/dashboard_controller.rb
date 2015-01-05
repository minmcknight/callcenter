class DashboardController < ApplicationController
  def index
    @calls = Call.all
    @responders = Responder.all
  end
  def assign
    call = Call.find(params[:id])
    Responder.assign(call)
    redirect_to root_path
  end
end
