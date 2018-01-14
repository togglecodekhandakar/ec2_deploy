class QuestiontypesController < ApplicationController
  before_action :set_questiontype, only: [:show, :edit, :update, :destroy]

  # GET /questiontypes
  # GET /questiontypes.json
  def index
    @questiontypes = Questiontype.all
  end

  # GET /questiontypes/1
  # GET /questiontypes/1.json
  def show
  end

  # GET /questiontypes/new
  def new
    @questiontype = Questiontype.new

  end

  # GET /questiontypes/1/edit
  def edit
  end

  # POST /questiontypes
  # POST /questiontypes.json
  def create
    @questiontype = Questiontype.new(questiontype_params)

    respond_to do |format|
      if @questiontype.save
        format.html { redirect_to @questiontype, notice: 'Questiontype was successfully created.' }
        format.json { render :show, status: :created, location: @questiontype }
      else
        format.html { render :new }
        format.json { render json: @questiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questiontypes/1
  # PATCH/PUT /questiontypes/1.json
  def update
    respond_to do |format|
      if @questiontype.update(questiontype_params)
        format.html { redirect_to @questiontype, notice: 'Questiontype was successfully updated.' }
        format.json { render :show, status: :ok, location: @questiontype }
      else
        format.html { render :edit }
        format.json { render json: @questiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questiontypes/1
  # DELETE /questiontypes/1.json
  def destroy
    @questiontype.destroy
    respond_to do |format|
      format.html { redirect_to questiontypes_url, notice: 'Questiontype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questiontype
      @questiontype = Questiontype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questiontype_params
      params.require(:questiontype).permit(:questiontype_id, :questiontype_name)
    end
end
