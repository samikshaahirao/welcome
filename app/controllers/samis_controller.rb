class SamisController < ApplicationController
  before_action :set_sami, only: %i[ show edit update destroy ]

  # GET /samis or /samis.json
  def index
    @samis = Sami.all
  end

  # GET /samis/1 or /samis/1.json
  def show
  end

  # GET /samis/new
  def new
    @sami = Sami.new
  end

  # GET /samis/1/edit
  def edit
  end

  # POST /samis or /samis.json
  def create
    @sami = Sami.new(sami_params)

    respond_to do |format|
      if @sami.save
        format.html { redirect_to sami_url(@sami), notice: "Sami was successfully created." }
        format.json { render :show, status: :created, location: @sami }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sami.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samis/1 or /samis/1.json
  def update
    respond_to do |format|
      if @sami.update(sami_params)
        format.html { redirect_to sami_url(@sami), notice: "Sami was successfully updated." }
        format.json { render :show, status: :ok, location: @sami }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sami.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samis/1 or /samis/1.json
  def destroy
    @sami.destroy

    respond_to do |format|
      format.html { redirect_to samis_url, notice: "Sami was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sami
      @sami = Sami.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sami_params
      params.require(:sami).permit(:title, :body, :/home/samiksha)
    end
end
