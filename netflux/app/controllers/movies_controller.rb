class MoviesController < ApplicationController
  before_action :get_subscription
  def index
    @movies = @subscription.movies
    render json: @movies, status: :ok
  end

  def show
    @movie = Movie.find(params[:id])
    if @subscription.movies.include?(@movie)
      render json: @movie, status: :ok
    else
      render json: { message: "That movie is not included in this subscription tier." }, status: :forbidden
    end
  end

  private
  def get_subscription
    @subscription = Subscription.find(params[:subscription_id])
  end
end
