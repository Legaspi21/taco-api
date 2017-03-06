class TacosController < ApplicationController
  before_action :set_taco, only: [:show]

  # GET /tacos
  def index
    @tacos = Taco.all
    json_response(@tacos)
  end

  # GET /tacos/:id
  def show
    json_response(@taco)
  end

  private

  def taco_params
    # whitelist params
    params.permit(:title, :description, :uri, :price)
  end

  def set_taco
    @taco = Taco.find(params[:id])
  end
end