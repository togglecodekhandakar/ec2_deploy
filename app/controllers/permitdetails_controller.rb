class PermitdetailsController < ApplicationController
  
  before_action :set_permitdetail, only: [:show, :edit, :update, :destroy]

  # GET /permitdetails
  # GET /permitdetails.json
  def index
    @permitdetails = Permitdetail.all
  end

  # GET /permitdetails/1
  # GET /permitdetails/1.json
  def show
  end

  # GET /permitdetails/new
  def new
    @permitdetail = Permitdetail.new

    @permits = Permit.all.map { |e| [e.permitid, e.id] }
    @questions = Question.all.map { |e| [e.question_id, e.id] }
    @commonquestions = Commonquestion.all.map { |e| [e.commonquestion_id, e.id] }

  end

  # GET /permitdetails/1/edit
  def edit
    @permits = Permit.all.map { |e| [e.permitid, e.id] }
    @questions = Question.all.map { |e| [e.question_id, e.id] }
    @commonquestions = Commonquestion.all.map { |e| [e.commonquestion_id, e.id] }
  end

  # POST /permitdetails
  # POST /permitdetails.json
  def create
    @permitdetail = Permitdetail.new(permitdetail_params)

    @permitdetail.permit_id = params[:permit_id]
    @permitdetail.question_id = params[:question_id]
    @permitdetail.commonquestion_id = params[:commonquestion_id]

   


    if params[:question_id].blank?
      @pemitdetail.question_text = "n/a"
    else 
      @questions = Question.find(params[:question_id])
      @permitdetail[:question_text] = @questions.question_text

    end

    if params[:commonquestion_id].blank?
      @pemitdetail.commonquestion_text = "n/a"
    else 
     @permitdetail[:commonquestion_text] = Commonquestion.find(params[:commonquestion_id]).question_text
    end


    

    respond_to do |format|
      if @permitdetail.save
        format.html { redirect_to @permitdetail, notice: 'Permitdetail was successfully created.' }
        format.json { render :show, status: :created, location: @permitdetail }
      else
        format.html { render :new }
        format.json { render json: @permitdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permitdetails/1
  # PATCH/PUT /permitdetails/1.json
  def update
    @permitdetail.permit_id = params[:permit_id]
    @permitdetail.question_id = params[:question_id]
    @permitdetail.commonquestion_id = params[:commonquestion_id]


 if params[:question_id].blank?
      @pemitdetail.question_text = "n/a"
    else 
      @questions = Question.find(params[:question_id])
      @permitdetail[:question_text] = @questions.question_text

    end

    if params[:commonquestion_id].blank?
      @pemitdetail.commonquestion_text = "n/a"
    else 
     @permitdetail[:commonquestion_text] = Commonquestion.find(params[:commonquestion_id]).question_text
    end


    respond_to do |format|
      if @permitdetail.update(permitdetail_params)
        format.html { redirect_to @permitdetail, notice: 'Permitdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @permitdetail }
      else
        format.html { render :edit }
        format.json { render json: @permitdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permitdetails/1
  # DELETE /permitdetails/1.json
  def destroy
    @permitdetail.destroy
    respond_to do |format|
      format.html { redirect_to permitdetails_url, notice: 'Permitdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permitdetail

      
      
      @permitdetail = Permitdetail.find(params[:id])

      
    end

    
      

    # Never trust parameters from the scary internet, only allow the white list through.
    def permitdetail_params
      params.require(:permitdetail).permit(:permitdetail_id, :permit_id, :question_id, :commonquestion_id, :strreply, :question_text, :commonquestion_text)
    end
end
