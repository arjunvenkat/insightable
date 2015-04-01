class MissionEnvironmentsController < ApplicationController
  before_action :set_mission_environment, only: [:show, :edit, :update, :destroy]

  # GET /mission_environments
  # GET /mission_environments.json
  def index
    @mission_environments = MissionEnvironment.all
  end

  # GET /mission_environments/1
  # GET /mission_environments/1.json
  def show
  end

  # GET /mission_environments/new
  def new
    @mission_environment = MissionEnvironment.new
  end

  # GET /mission_environments/1/edit
  def edit
  end

  # POST /mission_environments
  # POST /mission_environments.json
  def create
    @mission_environment = MissionEnvironment.new(mission_environment_params)

    respond_to do |format|
      if @mission_environment.save
        format.html { redirect_to @mission_environment, notice: 'Mission environment was successfully created.' }
        format.json { render :show, status: :created, location: @mission_environment }
      else
        format.html { render :new }
        format.json { render json: @mission_environment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mission_environments/1
  # PATCH/PUT /mission_environments/1.json
  def update
    respond_to do |format|
      if @mission_environment.update(mission_environment_params)
        format.html { redirect_to @mission_environment, notice: 'Mission environment was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_environment }
      else
        format.html { render :edit }
        format.json { render json: @mission_environment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mission_environments/1
  # DELETE /mission_environments/1.json
  def destroy
    @mission_environment.destroy
    respond_to do |format|
      format.html { redirect_to mission_environments_url, notice: 'Mission environment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mission_environment
      @mission_environment = MissionEnvironment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mission_environment_params
      params.require(:mission_environment).permit(:mission_id, :environment_id)
    end
end
