class StateCartsController < ApplicationController
  before_action :set_state_cart, only: [:show, :edit, :update, :destroy]

  # GET /state_carts
  # GET /state_carts.json
  def index
    @state_carts = StateCart.all
  end

  # GET /state_carts/1
  # GET /state_carts/1.json
  def show
  end

  # GET /state_carts/new
  def new
    @state_cart = StateCart.new
  end

  # GET /state_carts/1/edit
  def edit
  end

  # POST /state_carts
  # POST /state_carts.json
  def create
    @state_cart = StateCart.new(state_cart_params)

    respond_to do |format|
      if @state_cart.save
        format.html { redirect_to @state_cart, notice: 'State cart was successfully created.' }
        format.json { render :show, status: :created, location: @state_cart }
      else
        format.html { render :new }
        format.json { render json: @state_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_carts/1
  # PATCH/PUT /state_carts/1.json
  def update
    respond_to do |format|
      if @state_cart.update(state_cart_params)
        format.html { redirect_to @state_cart, notice: 'State cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_cart }
      else
        format.html { render :edit }
        format.json { render json: @state_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_carts/1
  # DELETE /state_carts/1.json
  def destroy
    @state_cart.destroy
    respond_to do |format|
      format.html { redirect_to state_carts_url, notice: 'State cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_cart
      @state_cart = StateCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_cart_params
      params.require(:state_cart).permit(:state)
    end
end
