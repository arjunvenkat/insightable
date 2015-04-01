class MissionProceduresController < ApplicationController
  before_action :set_mission_procedure, only: [:show, :edit, :update, :destroy]

  # GET /mission_procedures
  # GET /mission_procedures.json
  def index
    @mission_procedures = MissionProcedure.all
  end

  # GET /mission_procedures/1
  # GET /mission_procedures/1.json
  def show
  end

  # GET /mission_procedures/new
  def new
    @mission_procedure = MissionProcedure.new
  end

  # GET /mission_procedures/1/edit
  def edit
  end

  # POST /mission_procedures
  # POST /mission_procedures.json
  def create
    @mission_procedure = MissionProcedure.new(mission_procedure_params)

    respond_to do |format|
      if @mission_procedure.save
        format.html { redirect_to @mission_procedure, notice: 'Mission procedure was successfully created.' }
        format.json { render :show, status: :created, location: @mission_procedure }
      else
        format.html { render :new }
        format.json { render json: @mission_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mission_procedures/1
  # PATCH/PUT /mission_procedures/1.json
  def update
    respond_to do |format|
      if @mission_procedure.update(mission_procedure_params)
        format.html { redirect_to @mission_procedure, notice: 'Mission procedure was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_procedure }
      else
        format.html { render :edit }
        format.json { render json: @mission_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mission_procedures/1
  # DELETE /mission_procedures/1.json
  def destroy
    @mission_procedure.destroy
    respond_to do |format|
      format.html { redirect_to mission_procedures_url, notice: 'Mission procedure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mission_procedure
      @mission_procedure = MissionProcedure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mission_procedure_params
      params.require(:mission_procedure).permit(:mission_id, :procedure_id)
    end
end
