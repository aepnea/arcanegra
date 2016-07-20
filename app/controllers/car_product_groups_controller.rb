class CarProductGroupsController < ApplicationController
  before_action :set_car_product_group, only: [:show, :edit, :update, :destroy]

  # GET /car_product_groups
  # GET /car_product_groups.json
  def index
    @car_product_groups = CarProductGroup.all
  end

  # GET /car_product_groups/1
  # GET /car_product_groups/1.json
  def show
  end

  # GET /car_product_groups/new
  def new
    @car_product_group = CarProductGroup.new
  end

  # GET /car_product_groups/1/edit
  def edit
  end

  # POST /car_product_groups
  # POST /car_product_groups.json
  def create
    @car_product_group = CarProductGroup.new(car_product_group_params)

    respond_to do |format|
      if @car_product_group.save
        format.html { redirect_to @car_product_group, notice: 'Car product group was successfully created.' }
        format.json { render :show, status: :created, location: @car_product_group }
      else
        format.html { render :new }
        format.json { render json: @car_product_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_product_groups/1
  # PATCH/PUT /car_product_groups/1.json
  def update
    respond_to do |format|
      if @car_product_group.update(car_product_group_params)
        format.html { redirect_to @car_product_group, notice: 'Car product group was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_product_group }
      else
        format.html { render :edit }
        format.json { render json: @car_product_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_product_groups/1
  # DELETE /car_product_groups/1.json
  def destroy
    @car_product_group.destroy
    respond_to do |format|
      format.html { redirect_to car_product_groups_url, notice: 'Car product group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_product_group
      @car_product_group = CarProductGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_product_group_params
      params.require(:car_product_group).permit(:product_group_id, :cart_id)
    end
end
