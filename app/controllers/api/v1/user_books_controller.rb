class Api::V1::UserBooksController < ApplicationController
    # skip_before_action :authorized, only: [:get]

    def index
        @user_books = UserBook.all.select{|book|
          book.user_id == current_user.id
        }
        # byebug
        render json: { user_book: @user_books}
    end

    def show
        @user_book = UserBook.find(params[:id])
        render json: {user_book: @user_book}
    end

    def create
        @user_book = UserBook.create(user_id: current_user.id, name: user_book_params["name"], author:user_book_params["author"], shortname:user_book_params["shortname"], status: false)
        render json: { user_book: UserBookSerializer.new(@user_book)}, status: :created

    end

    def update
      @update_book = UserBook.find(params[:id])
      if @update_book.status == false
          @update_book.update(:status => true)
      else
        @update_book.update(:status => false)
      end
      render json: { user_book: UserBookSerializer.new(@update_book)}, status: :created

      # byebug
    end

    # def update
    #   @update_activity = Activity.find(params[:id])
    #     activity_params
    #
    #   # @update_activity = current_user.user_activities.find_by(activity_id: @activity_params["activity_id"])
    #
    #     if @update_activity.status == false
    #         @update_activity.update(:status => true)
    #     else
    #       @update_activity.update(:status => false)
    #     end

    private

    def user_book_params
      # debugger
        params.require(:user_book).permit(:user_id, :name, :author, :shortname, :status)
    end
end
