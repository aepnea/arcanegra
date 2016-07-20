class CarProductsController < ApplicationController
  before_action :set_car_product, only: [:show, :edit, :update, :destroy]

  # GET /car_products
  # GET /car_products.json
  def index
    @car_products = CarProduct.all
  end

  # GET /car_products/1
  # GET /car_products/1.json
  def show
  end

  # GET /car_products/new
  def new
    @car_product = CarProduct.new
  end

  # GET /car_products/1/edit
  def edit
  end

  # POST /car_products
  # POST /car_products.json
  def create
    @car_product = CarProduct.new(car_product_params)

    respond_to do |format|
      if @car_product.save
        format.html { redirect_to @car_product, notice: 'Car product was successfully created.' }
        format.json { render :show, status: :created, location: @car_product }
      else
        format.html { render :new }
        format.json { render json: @car_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_products/1
  # PATCH/PUT /car_products/1.json
  def update
    respond_to do |format|
      if @car_product.update(car_product_params)
        format.html { redirect_to @car_product, notice: 'Car product was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_product }
      else
        format.html { render :edit }
        format.json { render json: @car_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_products/1
  # DELETE /car_products/1.json
  def destroy
    @car_product.destroy
    respond_to do |format|
      format.html { redirect_to car_products_url, notice: 'Car product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_product
      @car_product = CarProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_product_params
      params.require(:car_product).permit(:product_id, :cart_id)
    end
end
