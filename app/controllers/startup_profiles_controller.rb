class StartupProfilesController < ApplicationController
  before_action :set_startup_profile, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def join
    @startup_profile = StartupProfile.find(params[:id])
    @startup_profile.users << current_user
    redirect_to :back
  end

  def leave
    @startup_profile = StartupProfile.find(params[:id])
    @startup_profile.users.delete(current_user)
    redirect_to :back
  end

  # GET /startup_profiles
  # GET /startup_profiles.json
  def index
    @startup_profiles = StartupProfile.all
  end

  # GET /startup_profiles/1
  # GET /startup_profiles/1.json
  def show
  end

  # GET /startup_profiles/new
  def new
    @startup_profile = StartupProfile.new
  end

  # GET /startup_profiles/1/edit
  def edit
  end

  # POST /startup_profiles
  # POST /startup_profiles.json
  def create
    @startup_profile = StartupProfile.new(startup_profile_params)
    @startup_profile.users << current_user

    respond_to do |format|
      if @startup_profile.save
        format.html { redirect_to @startup_profile, notice: 'Startup profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @startup_profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @startup_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startup_profiles/1
  # PATCH/PUT /startup_profiles/1.json
  def update
    respond_to do |format|
      if @startup_profile.update(startup_profile_params)
        format.html { redirect_to @startup_profile, notice: 'Startup profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @startup_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startup_profiles/1
  # DELETE /startup_profiles/1.json
  def destroy
    @startup_profile.destroy
    respond_to do |format|
      format.html { redirect_to startup_profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup_profile
      @startup_profile = StartupProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_profile_params
      params.require(:startup_profile).permit(:name, :address, :suburb, :state, :postcode, :country)
    end
end
