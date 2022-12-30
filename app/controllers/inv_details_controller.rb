class InvDetailsController < ApplicationController
  before_action :set_inv_detail, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /inv_details or /inv_details.json
  def index
    @inv_details = InvDetail.all
  end

  # GET /inv_details/1 or /inv_details/1.json
  def show
  end

  # GET /inv_details/new
  def new
    #@inv_detail = InvDetail.new
    @inv_detail = current_user.inv_details.build
  end

  # GET /inv_details/1/edit
  def edit
  end

  # POST /inv_details or /inv_details.json
  def create
    #@inv_detail = InvDetail.new(inv_detail_params)
    @inv_detail = current_user.inv_details.build(inv_detail_params)

    respond_to do |format|
      if @inv_detail.save
        format.html { redirect_to inv_detail_url(@inv_detail), notice: "Inv detail was successfully created." }
        format.json { render :show, status: :created, location: @inv_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inv_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inv_details/1 or /inv_details/1.json
  def update
    respond_to do |format|
      if @inv_detail.update(inv_detail_params)
        format.html { redirect_to inv_detail_url(@inv_detail), notice: "Inv detail was successfully updated." }
        format.json { render :show, status: :ok, location: @inv_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inv_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inv_details/1 or /inv_details/1.json
  def destroy
    @inv_detail.destroy

    respond_to do |format|
      format.html { redirect_to inv_details_url, notice: "Inv detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @inv_detail = current_user.inv_details.find_by(id: params[:id])
    redirect_to inv_details_path, notice: "Not authorized to edit this investor details" if @inv_detail.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inv_detail
      @inv_detail = InvDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inv_detail_params
      params.require(:inv_detail).permit(:first_name, :last_name, :email, :phone, :tfn, :dob, :balance, :user_id)
    end
end
