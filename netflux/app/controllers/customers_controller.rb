class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: @customers, status: :ok
  end

  def show
    @customer = Customer.find(params[:id])
    render json: @customer, status: :ok
  end

  # def create
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

end
