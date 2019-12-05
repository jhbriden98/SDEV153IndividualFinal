class Sdev140sController < ApplicationController
  before_action :set_sdev140, only: [:show, :edit, :update, :destroy]

  # GET /sdev140s
  # GET /sdev140s.json
  def index
    @sdev140s = Sdev140.all
  end

  # GET /sdev140s/1
  # GET /sdev140s/1.json
  def show
  end

  # GET /sdev140s/new
  def new
    @sdev140 = Sdev140.new
  end

  # GET /sdev140s/1/edit
  def edit
  end

  # POST /sdev140s
  # POST /sdev140s.json
  def create
    @sdev140 = Sdev140.new(sdev140_params)

    respond_to do |format|
      if @sdev140.save
        format.html { redirect_to @sdev140, notice: 'Sdev140 was successfully created.' }
        format.json { render :show, status: :created, location: @sdev140 }
      else
        format.html { render :new }
        format.json { render json: @sdev140.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sdev140s/1
  # PATCH/PUT /sdev140s/1.json
  def update
    respond_to do |format|
      if @sdev140.update(sdev140_params)
        format.html { redirect_to @sdev140, notice: 'Sdev140 was successfully updated.' }
        format.json { render :show, status: :ok, location: @sdev140 }
      else
        format.html { render :edit }
        format.json { render json: @sdev140.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sdev140s/1
  # DELETE /sdev140s/1.json
  def destroy
    @sdev140.destroy
    respond_to do |format|
      format.html { redirect_to sdev140s_url, notice: 'Sdev140 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sdev140
      @sdev140 = Sdev140.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sdev140_params
      params.fetch(:sdev140, {})
    end
end
