class ResponderStatusesController < ApplicationController
  before_action :set_responder_status, only: [:show, :edit, :update, :destroy]

  # GET /responder_statuses
  # GET /responder_statuses.json
  def index
    @responder_statuses = ResponderStatus.all
  end

  # GET /responder_statuses/1
  # GET /responder_statuses/1.json
  def show
  end

  # GET /responder_statuses/new
  def new
    @responder_status = ResponderStatus.new
  end

  # GET /responder_statuses/1/edit
  def edit
  end

  # POST /responder_statuses
  # POST /responder_statuses.json
  def create
    @responder_status = ResponderStatus.new(responder_status_params)

    respond_to do |format|
      if @responder_status.save
        format.html { redirect_to @responder_status, notice: 'Responder status was successfully created.' }
        format.json { render :show, status: :created, location: @responder_status }
      else
        format.html { render :new }
        format.json { render json: @responder_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responder_statuses/1
  # PATCH/PUT /responder_statuses/1.json
  def update
    respond_to do |format|
      if @responder_status.update(responder_status_params)
        format.html { redirect_to @responder_status, notice: 'Responder status was successfully updated.' }
        format.json { render :show, status: :ok, location: @responder_status }
      else
        format.html { render :edit }
        format.json { render json: @responder_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responder_statuses/1
  # DELETE /responder_statuses/1.json
  def destroy
    @responder_status.destroy
    respond_to do |format|
      format.html { redirect_to responder_statuses_url, notice: 'Responder status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responder_status
      @responder_status = ResponderStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def responder_status_params
      params.require(:responder_status).permit(:name)
    end
end
