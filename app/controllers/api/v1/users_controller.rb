
class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def index
    # render json: {user: UserSerializer.new(current_user)}, status: :accepted
    @users = User.all
render json: @users
  end

  def create
        @user = User.create(user_params)
        # byebug
        if @user.valid?
          @token = encode_token(user_id: @user.id)
    render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: @user.errors.full_messages.to_sentence }, status: :not_acceptable
        end
  end

      private
      def user_params
        # byebug
        params.require(:user).permit(:name, :username, :password)
      end
end


# , jwt: @token
