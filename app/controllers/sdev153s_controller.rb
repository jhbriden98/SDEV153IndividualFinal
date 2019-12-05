class Sdev153sController < ApplicationController
  before_action :set_sdev153, only: [:show, :edit, :update, :destroy]

  # GET /sdev153s
  # GET /sdev153s.json
  def index
    @sdev153s = Sdev153.all
  end

  # GET /sdev153s/1
  # GET /sdev153s/1.json
  def show
  end

  # GET /sdev153s/new
  def new
    @sdev153 = Sdev153.new
  end

  # GET /sdev153s/1/edit
  def edit
  end

  # POST /sdev153s
  # POST /sdev153s.json
  def create
    @sdev153 = Sdev153.new(sdev153_params)

    respond_to do |format|
      if @sdev153.save
        format.html { redirect_to @sdev153, notice: 'Sdev153 was successfully created.' }
        format.json { render :show, status: :created, location: @sdev153 }
      else
        format.html { render :new }
        format.json { render json: @sdev153.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sdev153s/1
  # PATCH/PUT /sdev153s/1.json
  def update
    respond_to do |format|
      if @sdev153.update(sdev153_params)
        format.html { redirect_to @sdev153, notice: 'Sdev153 was successfully updated.' }
        format.json { render :show, status: :ok, location: @sdev153 }
      else
        format.html { render :edit }
        format.json { render json: @sdev153.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sdev153s/1
  # DELETE /sdev153s/1.json
  def destroy
    @sdev153.destroy
    respond_to do |format|
      format.html { redirect_to sdev153s_url, notice: 'Sdev153 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sdev153
      @sdev153 = Sdev153.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sdev153_params
      params.fetch(:sdev153, {})
    end
end
