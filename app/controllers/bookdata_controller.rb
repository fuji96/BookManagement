class BookdataController < ApplicationController
  before_action :set_bookdatum, only: [:show, :edit, :update, :destroy]

  # GET /bookdata
  # GET /bookdata.json
  def index
    @bookdata = Bookdatum.all
  end

  # GET /bookdata/1
  # GET /bookdata/1.json
  def show
  end

  # GET /bookdata/new
  def new
    @bookdatum = Bookdatum.new
  end

  # GET /bookdata/1/edit
  def edit
  end

  # GET /bookdata/1/reviews
  def reviews
    @reviews = Review.find_all_by_bookdatum_id(params[:id])
  end

  # POST /bookdata
  # POST /bookdata.json
  def create
    @bookdatum = Bookdatum.new(bookdatum_params)

    respond_to do |format|
      if @bookdatum.save
        format.html { redirect_to @bookdatum, notice: 'Bookdatum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bookdatum }
      else
        format.html { render action: 'new' }
        format.json { render json: @bookdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookdata/1
  # PATCH/PUT /bookdata/1.json
  def update
    respond_to do |format|
      if @bookdatum.update(bookdatum_params)
        format.html { redirect_to @bookdatum, notice: 'Bookdatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bookdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookdata/1
  # DELETE /bookdata/1.json
  def destroy
    @bookdatum.destroy
    respond_to do |format|
      format.html { redirect_to bookdata_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookdatum
      @bookdatum = Bookdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookdatum_params
      params.require(:bookdatum).permit(:title, :authors, :price, :published)
    end
end
