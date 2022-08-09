class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @test = Test.find(params[:test_id])
    @answer = Answer.new(test: @test, user: current_user)
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
    @answer = Answer.find(params[:id])
    @test = Test.find(params[:id])

  end

  def destroy
    @answer = answer.find(params[:id])
    @answer.destroy
    redirect_to answers_path, notice: "O Questionário #{@answer.id} foi cancelado!"
  end
end
