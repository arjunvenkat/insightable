class MissionPersonasController < ApplicationController
  before_action :set_mission_persona, only: [:show, :edit, :update, :destroy]

  # GET /mission_personas
  # GET /mission_personas.json
  def index
    @mission_personas = MissionPersona.all
  end

  # GET /mission_personas/1
  # GET /mission_personas/1.json
  def show
  end

  # GET /mission_personas/new
  def new
    @mission_persona = MissionPersona.new
  end

  # GET /mission_personas/1/edit
  def edit
  end

  # POST /mission_personas
  # POST /mission_personas.json
  def create
    @mission_persona = MissionPersona.new(mission_persona_params)

    respond_to do |format|
      if @mission_persona.save
        format.html { redirect_to @mission_persona, notice: 'Mission persona was successfully created.' }
        format.json { render :show, status: :created, location: @mission_persona }
      else
        format.html { render :new }
        format.json { render json: @mission_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mission_personas/1
  # PATCH/PUT /mission_personas/1.json
  def update
    respond_to do |format|
      if @mission_persona.update(mission_persona_params)
        format.html { redirect_to @mission_persona, notice: 'Mission persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_persona }
      else
        format.html { render :edit }
        format.json { render json: @mission_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mission_personas/1
  # DELETE /mission_personas/1.json
  def destroy
    @mission_persona.destroy
    respond_to do |format|
      format.html { redirect_to mission_personas_url, notice: 'Mission persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mission_persona
      @mission_persona = MissionPersona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mission_persona_params
      params.require(:mission_persona).permit(:mission_id, :persona_id)
    end
end
