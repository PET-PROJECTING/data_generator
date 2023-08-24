module ResolveLimit
  extend ActiveSupport::Concern
  DEFAULT_LIMIT = 20

  included do
    def resolve_limit
      Integer(params[:limit], exception: false) || DEFAULT_LIMIT
    end
  end
end
