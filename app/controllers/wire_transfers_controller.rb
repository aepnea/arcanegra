class WireTransfersController < ApplicationController
  before_action :set_wire_transfer, only: [:show, :edit, :update, :destroy]

  # GET /wire_transfers
  # GET /wire_transfers.json
  def index
    @wire_transfers = WireTransfer.all
  end

  # GET /wire_transfers/1
  # GET /wire_transfers/1.json
  def show
  end

  # GET /wire_transfers/new
  def new
    @wire_transfer = WireTransfer.new
  end

  # GET /wire_transfers/1/edit
  def edit
  end

  # POST /wire_transfers
  # POST /wire_transfers.json
  def create
    @wire_transfer = WireTransfer.new(wire_transfer_params)

    respond_to do |format|
      if @wire_transfer.save
        format.html { redirect_to @wire_transfer, notice: 'Wire transfer was successfully created.' }
        format.json { render :show, status: :created, location: @wire_transfer }
      else
        format.html { render :new }
        format.json { render json: @wire_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wire_transfers/1
  # PATCH/PUT /wire_transfers/1.json
  def update
    respond_to do |format|
      if @wire_transfer.update(wire_transfer_params)
        format.html { redirect_to @wire_transfer, notice: 'Wire transfer was successfully updated.' }
        format.json { render :show, status: :ok, location: @wire_transfer }
      else
        format.html { render :edit }
        format.json { render json: @wire_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wire_transfers/1
  # DELETE /wire_transfers/1.json
  def destroy
    @wire_transfer.destroy
    respond_to do |format|
      format.html { redirect_to wire_transfers_url, notice: 'Wire transfer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wire_transfer
      @wire_transfer = WireTransfer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wire_transfer_params
      params.require(:wire_transfer).permit(:bank, :titular_account, :account, :account_type, :rut, :email, :payment_type_id)
    end
end
