class Sdev120sController < ApplicationController
  before_action :set_sdev120, only: [:show, :edit, :update, :destroy]

  # GET /sdev120s
  # GET /sdev120s.json
  def index
    @sdev120s = Sdev120.all
  end

  # GET /sdev120s/1
  # GET /sdev120s/1.json
  def show
  end

  # GET /sdev120s/new
  def new
    @sdev120 = Sdev120.new
  end

  # GET /sdev120s/1/edit
  def edit
  end

  # POST /sdev120s
  # POST /sdev120s.json
  def create
    @sdev120 = Sdev120.new(sdev120_params)

    respond_to do |format|
      if @sdev120.save
        format.html { redirect_to @sdev120, notice: 'Sdev120 was successfully created.' }
        format.json { render :show, status: :created, location: @sdev120 }
      else
        format.html { render :new }
        format.json { render json: @sdev120.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sdev120s/1
  # PATCH/PUT /sdev120s/1.json
  def update
    respond_to do |format|
      if @sdev120.update(sdev120_params)
        format.html { redirect_to @sdev120, notice: 'Sdev120 was successfully updated.' }
        format.json { render :show, status: :ok, location: @sdev120 }
      else
        format.html { render :edit }
        format.json { render json: @sdev120.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sdev120s/1
  # DELETE /sdev120s/1.json
  def destroy
    @sdev120.destroy
    respond_to do |format|
      format.html { redirect_to sdev120s_url, notice: 'Sdev120 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sdev120
      @sdev120 = Sdev120.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sdev120_params
      params.fetch(:sdev120, {})
    end
end
