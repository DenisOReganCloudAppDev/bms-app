class MaintenanceRequestsController < ApplicationController
  protect_from_forgery with: :exception, unless: -> {request.format.json?}
  before_action :set_maintenance_request, only: %i[ show edit update destroy ]

  # GET /maintenance_requests or /maintenance_requests.json
  def index
    @maintenance_requests = MaintenanceRequest.all
  end

  # GET /maintenance_requests/1 or /maintenance_requests/1.json
  def show
  end

  # GET /maintenance_requests/new
  def new
    @maintenance_request = MaintenanceRequest.new
  end

  # GET /maintenance_requests/1/edit
  def edit
  end

  # POST /maintenance_requests or /maintenance_requests.json
  def create
    @maintenance_request = MaintenanceRequest.new(maintenance_request_params)

    respond_to do |format|
      if @maintenance_request.save
        format.html { redirect_to maintenance_request_url(@maintenance_request), notice: "Maintenance request was successfully created." }
        format.json { render :show, status: :created, location: @maintenance_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maintenance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance_requests/1 or /maintenance_requests/1.json
  def update
    respond_to do |format|
      if @maintenance_request.update(maintenance_request_params)
        format.html { redirect_to maintenance_request_url(@maintenance_request), notice: "Maintenance request was successfully updated." }
        format.json { render :show, status: :ok, location: @maintenance_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maintenance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_requests/1 or /maintenance_requests/1.json
  def destroy
    @maintenance_request.destroy

    respond_to do |format|
      format.html { redirect_to maintenance_requests_url, notice: "Maintenance request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance_request
      @maintenance_request = MaintenanceRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maintenance_request_params
      params.require(:maintenance_request).permit(:tenant_id, :requestinfo, :requestDate, :completed, :comment)
    end
end
