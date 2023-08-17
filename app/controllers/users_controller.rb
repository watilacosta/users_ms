# frozen_string_literal: true

class UsersController < ApplicationController # :nodoc:
  def create
    result = CreateUser.call(params: user_params)

    if result.success?
      render json: result.user, status: :created
    else
      render json: { errors: result.message }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user)
          .permit(:first_name, :last_name, :email, :cpf, :password, :password_confirmation)
  end
end
