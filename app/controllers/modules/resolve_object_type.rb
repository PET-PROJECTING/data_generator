module ResolveObjectType
  UNKNOWN_TYPE = :unknown

  def resolve_object_type
    params[:object] || UNKNOWN_TYPE
  end
end
