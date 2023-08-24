module GetData
  module Default
    class UsersController < ApplicationController
      include ::ResolveLimit

      def index
        @users = User.first(resolve_limit)
      end
    end
  end
end
