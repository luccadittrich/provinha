class TestsController < ApplicationController
  def index
    @tests = Test.all
    @answers = Answer.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new
    @test.save
    if @test.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to @test, notice: "#{@test.name} foi editado."
      @test.save
    else
      render :edit
    end
  end

  def show
    @test = Test.find(params[:id])
    @answers = Answer.all

  end

  def destroy
    @test = test.find(params[:id])
    @test.destroy
    redirect_to tests_path, notice: "O Questionário #{@test.id} foi cancelado!"
  end
end
