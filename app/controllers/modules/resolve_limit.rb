module ResolveLimit
  DEFAULT_LIMIT = 20

  def resolve_limit
    Integer(params[:limit], exception: false) || DEFAULT_LIMIT
  end
end
