class Api::PointsController < ApplicationController

  def index
    render json: {
      points: Point.all
    }, status: 200
  end

  def create
    point = Point.create(values: params[:point][:values])
    render json: {
      point: point
    }, status: 201
  end

end
