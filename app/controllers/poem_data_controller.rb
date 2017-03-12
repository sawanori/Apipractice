class PoemDataController < ApplicationController
  before_action :set_poem_datum, only: [:show, :edit, :update, :destroy]

  # GET /poem_data
  # GET /poem_data.json
  def index
    @poem_data = PoemDatum.all
  end

  # GET /poem_data/1
  # GET /poem_data/1.json
  def show
  end

  # GET /poem_data/new
  def new
    @poem_datum = PoemDatum.new
  end

  # GET /poem_data/1/edit
  def edit
  end

  # POST /poem_data
  # POST /poem_data.json
  def create
    @poem_datum = PoemDatum.new(poem_datum_params)

    respond_to do |format|
      if @poem_datum.save
        format.html { redirect_to @poem_datum, notice: 'Poem datum was successfully created.' }
        format.json { render :show, status: :created, location: @poem_datum }
      else
        format.html { render :new }
        format.json { render json: @poem_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poem_data/1
  # PATCH/PUT /poem_data/1.json
  def update
    respond_to do |format|
      if @poem_datum.update(poem_datum_params)
        format.html { redirect_to @poem_datum, notice: 'Poem datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @poem_datum }
      else
        format.html { render :edit }
        format.json { render json: @poem_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poem_data/1
  # DELETE /poem_data/1.json
  def destroy
    @poem_datum.destroy
    respond_to do |format|
      format.html { redirect_to poem_data_url, notice: 'Poem datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poem_datum
      @poem_datum = PoemDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poem_datum_params
      params.require(:poem_datum).permit(:title, :content)
    end
end
