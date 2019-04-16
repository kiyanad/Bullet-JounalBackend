class Api::V1::HabitsController < ApplicationController
    skip_before_action :authorized, only: [:get]

    def index
        @habits = Habit.all
        render json: { habit: @habits}
    end

    def show
        @habit = Habit.find(params[:id])
        render json: {habit: @habit}
    end

    def create

      @habit_temp = Habit.new(habit_params)
      # byebug
      if @habit_temp.valid? == true
        # byebug
        @habit = Habit.create(habit_params)
      #

      @user_habit = UserHabit.create(user_id: current_user.id, habit_id: @habit.id, status: false)

      # byebug

  render json: { user_habit: UserHabitSerializer.new(@user_habit)}, status: :created
else
render json: { message: 'failed to create habit' }, status: :not_acceptable
      end
    end
      #   # render json: { habit: HabitSerializer.new(@habit)}, status: :created
      #   # byebug
  #     else
  # render json: { message: 'failed to create habit' }, status: :not_acceptable
  # end
# byebug

    def destroy
        @habit = Habit.find(params[:id])
        # byebug
        @habit.destroy
        render json: { habit: HabitSerializer.new(@habit)}, status: :created

    end
    private

    def habit_params
        params.require(:habit).permit(:name, :id, :user_habit)
    end
end
