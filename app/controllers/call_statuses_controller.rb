class CallStatusesController < ApplicationController
  before_action :set_call_status, only: [:show, :edit, :update, :destroy]

  # GET /call_statuses
  # GET /call_statuses.json
  def index
    @call_statuses = CallStatus.all
  end

  # GET /call_statuses/1
  # GET /call_statuses/1.json
  def show
  end

  # GET /call_statuses/new
  def new
    @call_status = CallStatus.new
  end

  # GET /call_statuses/1/edit
  def edit
  end

  # POST /call_statuses
  # POST /call_statuses.json
  def create
    @call_status = CallStatus.new(call_status_params)

    respond_to do |format|
      if @call_status.save
        format.html { redirect_to @call_status, notice: 'Call status was successfully created.' }
        format.json { render :show, status: :created, location: @call_status }
      else
        format.html { render :new }
        format.json { render json: @call_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_statuses/1
  # PATCH/PUT /call_statuses/1.json
  def update
    respond_to do |format|
      if @call_status.update(call_status_params)
        format.html { redirect_to @call_status, notice: 'Call status was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_status }
      else
        format.html { render :edit }
        format.json { render json: @call_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_statuses/1
  # DELETE /call_statuses/1.json
  def destroy
    @call_status.destroy
    respond_to do |format|
      format.html { redirect_to call_statuses_url, notice: 'Call status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_status
      @call_status = CallStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_status_params
      params.require(:call_status).permit(:name)
    end
end
