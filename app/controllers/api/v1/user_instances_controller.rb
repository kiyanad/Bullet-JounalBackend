class Api::V1::UserInstancesController < ApplicationController
  def index
    @user = current_user

      @user_instances = @user.user_instances
      @new_instance = @user_instances.map{|instance| UserInstanceSerializer.new(instance)}
      # byebug
      # @my_instance = @new_instance.select{|instance| instance.user_habit.user_id == current_user.id}
      render json: { user_instance: @new_instance}
  end

  def show
      @user_instance = UserInstance.find(params[:id])
      render json: {user_instance: @user_instance}
  end

  def create
    # byebug 
      @user_instance = UserInstance.create(user_habit_id:user_instance_params["user_habit_id"], status:user_instance_params["status"], date:user_instance_params["date"])
      render json: { user_instance: UserInstanceSerializer.new(@user_instance)}, status: :created

  end

  private

  def user_instance_params

      params.require(:user_instance).permit(:user_habit_id, :status, :date)
  end
end
