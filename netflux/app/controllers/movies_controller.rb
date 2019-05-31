class MoviesController < ApplicationController
  def index
    @subscription = Subscription.find(params[:subscription_id])
    @movies = @subscription.movies
    render json: @movies, status: :ok
  end

  def show

  end
end
