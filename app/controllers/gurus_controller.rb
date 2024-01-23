class GurusController < ApplicationController
  before_action :set_guru, only: %i[ show edit update destroy ]

  # GET /gurus or /gurus.json
  def index
    @gurus = Guru.all
  end

  # GET /gurus/1 or /gurus/1.json
  def show
  end

  # GET /gurus/new
  def new
    @guru = Guru.new
  end

  # GET /gurus/1/edit
  def edit
  end

  # POST /gurus or /gurus.json
  def create
    @guru = Guru.new(guru_params)

    respond_to do |format|
      if @guru.save
        format.html { redirect_to guru_url(@guru), notice: "Guru was successfully created." }
        format.json { render :show, status: :created, location: @guru }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gurus/1 or /gurus/1.json
  def update
    respond_to do |format|
      if @guru.update(guru_params)
        format.html { redirect_to guru_url(@guru), notice: "Guru was successfully updated." }
        format.json { render :show, status: :ok, location: @guru }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gurus/1 or /gurus/1.json
  def destroy
    @guru.destroy!

    respond_to do |format|
      format.html { redirect_to gurus_url, notice: "Guru was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guru
      @guru = Guru.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guru_params
      params.require(:guru).permit(:nama, :bid_studi)
    end
end
