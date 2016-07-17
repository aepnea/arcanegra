class ProductProductGroupsController < ApplicationController
  before_action :set_product_product_group, only: [:show, :edit, :update, :destroy]

  # GET /product_product_groups
  # GET /product_product_groups.json
  def index
    @product_product_groups = ProductProductGroup.all
  end

  # GET /product_product_groups/1
  # GET /product_product_groups/1.json
  def show
  end

  # GET /product_product_groups/new
  def new
    @product_product_group = ProductProductGroup.new
  end

  # GET /product_product_groups/1/edit
  def edit
  end

  # POST /product_product_groups
  # POST /product_product_groups.json
  def create
    @product_product_group = ProductProductGroup.new(product_product_group_params)

    respond_to do |format|
      if @product_product_group.save
        format.html { redirect_to @product_product_group, notice: 'Product product group was successfully created.' }
        format.json { render :show, status: :created, location: @product_product_group }
      else
        format.html { render :new }
        format.json { render json: @product_product_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_product_groups/1
  # PATCH/PUT /product_product_groups/1.json
  def update
    respond_to do |format|
      if @product_product_group.update(product_product_group_params)
        format.html { redirect_to @product_product_group, notice: 'Product product group was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_product_group }
      else
        format.html { render :edit }
        format.json { render json: @product_product_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_product_groups/1
  # DELETE /product_product_groups/1.json
  def destroy
    @product_product_group.destroy
    respond_to do |format|
      format.html { redirect_to product_product_groups_url, notice: 'Product product group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_product_group
      @product_product_group = ProductProductGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_product_group_params
      params.require(:product_product_group).permit(:product_id, :product_group_id)
    end
end
