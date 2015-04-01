class MissionMembershipsController < ApplicationController
  before_action :set_mission_membership, only: [:show, :edit, :update, :destroy]

  # GET /mission_memberships
  # GET /mission_memberships.json
  def index
    @mission_memberships = MissionMembership.all
  end

  # GET /mission_memberships/1
  # GET /mission_memberships/1.json
  def show
  end

  # GET /mission_memberships/new
  def new
    @mission_membership = MissionMembership.new
  end

  # GET /mission_memberships/1/edit
  def edit
  end

  # POST /mission_memberships
  # POST /mission_memberships.json
  def create
    @mission_membership = MissionMembership.new(mission_membership_params)

    respond_to do |format|
      if @mission_membership.save
        format.html { redirect_to @mission_membership, notice: 'Mission membership was successfully created.' }
        format.json { render :show, status: :created, location: @mission_membership }
      else
        format.html { render :new }
        format.json { render json: @mission_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mission_memberships/1
  # PATCH/PUT /mission_memberships/1.json
  def update
    respond_to do |format|
      if @mission_membership.update(mission_membership_params)
        format.html { redirect_to @mission_membership, notice: 'Mission membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_membership }
      else
        format.html { render :edit }
        format.json { render json: @mission_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mission_memberships/1
  # DELETE /mission_memberships/1.json
  def destroy
    @mission_membership.destroy
    respond_to do |format|
      format.html { redirect_to mission_memberships_url, notice: 'Mission membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mission_membership
      @mission_membership = MissionMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mission_membership_params
      params.require(:mission_membership).permit(:user_id, :mission_id)
    end
end
