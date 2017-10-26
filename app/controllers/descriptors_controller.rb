class DescriptorsController < ApplicationController
  before_action :set_descriptor, only: [:show, :edit, :update, :destroy]

  # GET /descriptors
  # GET /descriptors.json
  def index
    @descriptors = Descriptor.all
  end

  # GET /descriptors/1
  # GET /descriptors/1.json
  def show
  end

  # GET /descriptors/new
  def new
    @descriptor = Descriptor.new
  end

  # GET /descriptors/1/edit
  def edit
  end

  # POST /descriptors
  # POST /descriptors.json
  def create
    @descriptor = Descriptor.new(descriptor_params)

    respond_to do |format|
      if @descriptor.save
        format.html { redirect_to @descriptor, notice: 'Descriptor was successfully created.' }
        format.json { render :show, status: :created, location: @descriptor }
      else
        format.html { render :new }
        format.json { render json: @descriptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descriptors/1
  # PATCH/PUT /descriptors/1.json
  def update
    respond_to do |format|
      if @descriptor.update(descriptor_params)
        format.html { redirect_to @descriptor, notice: 'Descriptor was successfully updated.' }
        format.json { render :show, status: :ok, location: @descriptor }
      else
        format.html { render :edit }
        format.json { render json: @descriptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptors/1
  # DELETE /descriptors/1.json
  def destroy
    @descriptor.destroy
    respond_to do |format|
      format.html { redirect_to descriptors_url, notice: 'Descriptor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descriptor
      @descriptor = Descriptor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descriptor_params
      params.require(:descriptor).permit(:foreign_key_type, :foreign_key_id, :name, :description_id, :category_id)
    end
end
