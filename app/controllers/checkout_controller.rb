class CheckoutController < ApplicationController
  before_action :set_shopping_cart, :set_address, only: [:show, :edit, :update, :destroy]
  before_action :show_cart_products



  # GET /addresses
  # GET /addresses.json
  def index

    if customer_signed_in?
      @addresses = Address.where(customer_id:  current_customer.id)
    end
    @address = Address.new

  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
  end

  # GET /addresses/new
  def new
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.new(address_params)

      if @address.save
        redirect_to checkout_index_path, notice: 'Address was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to root_path, notice: 'Address was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Address was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params

      params.require(:address).permit(:customer_id, :city_id, :state_id, :address)
    end

end
