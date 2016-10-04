class TestsController < ApplicationController
  def show
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end 

  def create
    @test = Test.create(test_params)
    redirect_to test_path(@test)
  end

  private

  def test_params
    params.require(:test).permit(:name)
  end
end
