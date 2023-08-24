module GetData
  module Default
    class UsersController < ApplicationController
      include ::ResolveLimit
      include ::ResolveFields
      include ::RenderResponse

      def index
        @users = User.with_selected_fields(resolve_fields).first(resolve_limit)
        render_json_response(data: @users, model: User)
      end
    end
  end
end
