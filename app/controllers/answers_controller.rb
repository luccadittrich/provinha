class AnswersController < ApplicationController
  def index
    @answers = Answer.all
    @tests = Test.all
    @users = User.all

  end

  def new

    @test = Test.find(params[:test_id])
    @answer = Answer.new
    @question = @test.question
  end

  def create
    # @test =  Test.find(params[:test_id])
    # @answer = Answer.new(test: @test, user: current_user)
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    @answer.test = Test.find(params[:test_id])
    @answer.save
    if @answer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])

    if @answer.update(answer_params)
      redirect_to @answer, notice: "#{@answer.name} foi editado."
      @answer.save
    else
      render :edit
    end
  end

  def show
    @test = Test.find(params[:id])
    @answers = Answer.find(params[:id])
    @answer = @answers.test
  end

  def destroy
    @user = User.find(params[:id])
    @test = Test.find(params[:test_id])
    @answer = Answer.find_by(test: @test, user: @user)
    @answer.destroy
    redirect_to test_answers_path, notice: "A resposta foi excluída!"
  end

  private

  def answer_params
    params.require(:answer).permit(:answer1, :answer2, :answer3, :answer4)
  end
end
