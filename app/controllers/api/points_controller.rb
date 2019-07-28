class Api::PointsController < ApplicationController

  def index
    if !params[:minutes_ago].nil?
      points = Point.from_minutes_ago(params[:minutes_ago].to_i)
    else
      points = Point.all
    end
    render json: {
      points: points
    }, status: 200
  end

  def create
    point = Point.create(values: params[:point][:values])
    render json: {
      point: point
    }, status: 201
  end

end
