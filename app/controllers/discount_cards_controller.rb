class DiscountCardsController < ApplicationController
  before_action :set_discount_card, only: [:show, :edit, :update, :destroy]

  # GET /discount_cards
  # GET /discount_cards.json
  def index
    @discount_cards = DiscountCard.all
  end

  # GET /discount_cards/1
  # GET /discount_cards/1.json
  def show
  end

  # GET /discount_cards/new
  def new
    @discount_card = DiscountCard.new
  end

  # GET /discount_cards/1/edit
  def edit
  end

  # POST /discount_cards
  # POST /discount_cards.json
  def create
    @discount_card = DiscountCard.new(discount_card_params)

    respond_to do |format|
      if @discount_card.save
        format.html { redirect_to @discount_card, notice: 'Discount card was successfully created.' }
        format.json { render :show, status: :created, location: @discount_card }
      else
        format.html { render :new }
        format.json { render json: @discount_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discount_cards/1
  # PATCH/PUT /discount_cards/1.json
  def update
    respond_to do |format|
      if @discount_card.update(discount_card_params)
        format.html { redirect_to @discount_card, notice: 'Discount card was successfully updated.' }
        format.json { render :show, status: :ok, location: @discount_card }
      else
        format.html { render :edit }
        format.json { render json: @discount_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discount_cards/1
  # DELETE /discount_cards/1.json
  def destroy
    @discount_card.destroy
    respond_to do |format|
      format.html { redirect_to discount_cards_url, notice: 'Discount card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount_card
      @discount_card = DiscountCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discount_card_params
      params.require(:discount_card).permit(:store_id, :user_id, :category_id)
    end
end
