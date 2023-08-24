module GetData
  module Default
    class UsersController < ApplicationController
      def index
        @users = User.all
        # render json: { data: @users }, status: :ok
      end
    end
  end
end

