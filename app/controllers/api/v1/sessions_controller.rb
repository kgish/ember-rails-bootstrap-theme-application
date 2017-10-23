class Api::V1::SessionsController < ApplicationController
  def create
    user = User.where(email: params[:user][:email]).first

    if user&.valid_password?(params[:user][:password])
      render json: user.as_json(only: [:email, :authentication_token]), status: :created
    else
      render json: { error: 'Incorrect email or password.' }, status: :unauthorized
    end
  end

  def destroy

  end
end
