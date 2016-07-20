class CartProductGroupsController < ApplicationController
  before_action :set_cart_product_group, only: [:show, :edit, :update, :destroy]

  # GET /cart_product_groups
  # GET /cart_product_groups.json
  def index
    @cart_product_groups = CartProductGroup.all
  end

  # GET /cart_product_groups/1
  # GET /cart_product_groups/1.json
  def show
  end

  # GET /cart_product_groups/new
  def new
    @cart_product_group = CartProductGroup.new
  end

  # GET /cart_product_groups/1/edit
  def edit
  end

  # POST /cart_product_groups
  # POST /cart_product_groups.json
  def create
    @cart_product_group = CartProductGroup.new(cart_product_group_params)

    respond_to do |format|
      if @cart_product_group.save
        format.html { redirect_to @cart_product_group, notice: 'Cart product group was successfully created.' }
        format.json { render :show, status: :created, location: @cart_product_group }
      else
        format.html { render :new }
        format.json { render json: @cart_product_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_product_groups/1
  # PATCH/PUT /cart_product_groups/1.json
  def update
    respond_to do |format|
      if @cart_product_group.update(cart_product_group_params)
        format.html { redirect_to @cart_product_group, notice: 'Cart product group was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart_product_group }
      else
        format.html { render :edit }
        format.json { render json: @cart_product_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_product_groups/1
  # DELETE /cart_product_groups/1.json
  def destroy
    @cart_product_group.destroy
    respond_to do |format|
      format.html { redirect_to cart_product_groups_url, notice: 'Cart product group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_product_group
      @cart_product_group = CartProductGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_product_group_params
      params.require(:cart_product_group).permit(:product_group_id, :cart_id)
    end
end
