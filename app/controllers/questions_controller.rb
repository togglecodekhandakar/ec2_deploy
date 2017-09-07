class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
    @categories = Category.all.map { |e| [e.category_name, e.id] }
    @parttypes = Parttype.all.map { |e| [e.parttype_name, e.id] }
    @questiontypes = Questiontype.all.map { |e| [e.questiontype_name, e.id] }
  end

  # GET /questions/1/edit
  def edit
    @categories = Category.all.map { |e| [e.category_name, e.id] }
    @parttypes = Parttype.all.map { |e| [e.parttype_name, e.id] }
    @questiontypes = Questiontype.all.map { |e| [e.questiontype_name, e.id] }
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.category_id = params[:category_id]
    @question.parttype_id = params[:parttype_id]
    @question.questiontype_id = params[:questiontype_id]

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    
    @question.category_id = params[:category_id]
    @question.parttype_id = params[:parttype_id]
    @question.questiontype_id = params[:questiontype_id]

    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question_id, :question_text, :options, :category_id, :parttype_id, :questiontype_id)
    end
end
