class ArtistProcuctGroupsController < ApplicationController
  before_action :set_artist_procuct_group, only: [:show, :edit, :update, :destroy]

  # GET /artist_procuct_groups
  # GET /artist_procuct_groups.json
  def index
    @artist_procuct_groups = ArtistProcuctGroup.all
  end

  # GET /artist_procuct_groups/1
  # GET /artist_procuct_groups/1.json
  def show
  end

  # GET /artist_procuct_groups/new
  def new
    @artist_procuct_group = ArtistProcuctGroup.new
  end

  # GET /artist_procuct_groups/1/edit
  def edit
  end

  # POST /artist_procuct_groups
  # POST /artist_procuct_groups.json
  def create
    @artist_procuct_group = ArtistProcuctGroup.new(artist_procuct_group_params)

    respond_to do |format|
      if @artist_procuct_group.save
        format.html { redirect_to @artist_procuct_group, notice: 'Artist procuct group was successfully created.' }
        format.json { render :show, status: :created, location: @artist_procuct_group }
      else
        format.html { render :new }
        format.json { render json: @artist_procuct_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_procuct_groups/1
  # PATCH/PUT /artist_procuct_groups/1.json
  def update
    respond_to do |format|
      if @artist_procuct_group.update(artist_procuct_group_params)
        format.html { redirect_to @artist_procuct_group, notice: 'Artist procuct group was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_procuct_group }
      else
        format.html { render :edit }
        format.json { render json: @artist_procuct_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_procuct_groups/1
  # DELETE /artist_procuct_groups/1.json
  def destroy
    @artist_procuct_group.destroy
    respond_to do |format|
      format.html { redirect_to artist_procuct_groups_url, notice: 'Artist procuct group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_procuct_group
      @artist_procuct_group = ArtistProcuctGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_procuct_group_params
      params.require(:artist_procuct_group).permit(:product_group_id, :article_id)
    end
end
