class InstrumentsController < ApplicationController
  before_action :authenticate_user,  only: [:user_instruments, :update_instruments_list]

  def index
    instruments = Instrument.all
    render json: instruments
  end

  def user_instruments
    render json: current_user.instruments
  end

  def update_instruments_list
    if current_user.instruments.update(instrument_params)
      render json: { status: 200, msg: 'User instruments have been updated.' }
    else
      render json: { msg: 'Update instrument list error'}
    end
  end

  private 
    def instrument_params
      params.permit(:name, :avatar)
    end
end