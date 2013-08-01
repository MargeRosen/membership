class BandMembershipsController < ApplicationController
  #before_action :set_band_member, only: [:show, :edit, :update, :destroy]
  before_filter :find_bands_and_musicians, only: [:new, :create]

   # GET /band_members/new
  def new
    if Musician.count == 0
      flash[:alert] = "Membership cannot be added until there are musicians."
      redirect_to musician_path
    else
      @band_membership = BandMembership.new
    end
  end

  def index
    @band_memberships = BandMembership.all
  end

  # GET /band_members/1
  def show
    @band_memberships = BandMembership.find(params[:id])
  end

  # GET /musicians/1/edit
  def edit
  end

  # POST /musicians
  # POST /musicians.json
  def create
    @band_membership = BandMembership.create(band_membership_params)

    respond_to do |format|
      if @band_membership.save
        format.html { redirect_to @band_membership, notice: 'Band Membership was successfully created.' }
        format.json { render action: 'show', status: :created, location: @band_memebership }
      else
        format.html { render action: 'new' }
        format.json { render json: @band_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicians/1
  # PATCH/PUT /musicians/1.json
  def update
    respond_to do |format|
      if @band_membership.update(band_member_params)
        format.html { redirect_to @band_membership, notice: 'Band Membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @band_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicians/1
  # DELETE /musicians/1.json
  def destroy
    @band_membership.destroy
    respond_to do |format|
      format.html { redirect_to band_memberships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_membership
      @band_membership = BandMembership.find(params[:id])
    end

    def find_bands_and_musicians
      @musicians = Musician.all
      @bands = Band.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_membership_params
      params.require(:band_membership).permit(:start, :left)
    end
end

