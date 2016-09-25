class ProductProductAttributesController < ApplicationController
  before_action :set_product_product_attribute, only: [:show, :edit, :update, :destroy]

  # GET /product_product_attributes
  # GET /product_product_attributes.json
  def index
    @product_product_attributes = ProductProductAttribute.all
  end

  # GET /product_product_attributes/1
  # GET /product_product_attributes/1.json
  def show
  end

  # GET /product_product_attributes/new
  def new
    @product_product_attribute = ProductProductAttribute.new
    @product = Product.all
    @product_attribute = ProductAttribute.all
  end

  # GET /product_product_attributes/1/edit
  def edit
  end

  # POST /product_product_attributes
  # POST /product_product_attributes.json
  def create
    @product_product_attribute = ProductProductAttribute.new(product_product_attribute_params)

    respond_to do |format|
      if @product_product_attribute.save
        format.html { redirect_to @product_product_attribute, notice: 'Product product attribute was successfully created.' }
        format.json { render :show, status: :created, location: @product_product_attribute }
      else
        format.html { render :new }
        format.json { render json: @product_product_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_product_attributes/1
  # PATCH/PUT /product_product_attributes/1.json
  def update
    respond_to do |format|
      if @product_product_attribute.update(product_product_attribute_params)
        format.html { redirect_to @product_product_attribute, notice: 'Product product attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_product_attribute }
      else
        format.html { render :edit }
        format.json { render json: @product_product_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_product_attributes/1
  # DELETE /product_product_attributes/1.json
  def destroy
    @product_product_attribute.destroy
    respond_to do |format|
      format.html { redirect_to product_product_attributes_url, notice: 'Product product attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_product_attribute
      @product_product_attribute = ProductProductAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_product_attribute_params
      params.require(:product_product_attribute).permit(:product_id, :product_attribute_id)
    end
end
