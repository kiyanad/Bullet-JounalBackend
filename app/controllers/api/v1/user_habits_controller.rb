class Api::V1::UserHabitsController < ApplicationController
    # skip_before_action :authorized, only: [:get]

    def index
      # byebug
      @user_habits= current_user.user_habits
      @all_habits = @user_habits.map{|habit| UserHabitSerializer.new(habit)}
        render json: { user_habit: @all_habits}
    end

    def show
        @user_habit = UserHabit.find(params[:id])
        render json: {user_habit: @user_habit}
    end

    def create
# byebug
        @user_habit = UserHabit.create(user_habit_params)

    render json: { user_habit: UserHabitSerializer.new(@user_habit)}, status: :created
    # byebug


    end

    def destroy
        @habit = UserHabit.find(params[:id])
        @habit.destroy
        render json: { habit: UserHabitSerializer.new(@habit)}, status: :created

    end

    private

    def user_habit_params
      # byebug
        params.require(:user_habit).permit(:id, :user_id, :habit_id, :status)
    end
end
