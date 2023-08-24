module RenderResponse
  include ::ResolveFields

  def render_json_response(data:, model:, status_cd: :ok, status: 'Success', custom_message: nil)
    render json: {
      data: data,
      status: status,
      message: custom_message || %Q(#{model} records were loaded),
      details: %Q(Loaded with #{resolve_fields} fields. The next #{model} model attributes are also available #{model.attribute_names - resolve_fields})
    }, status: status_cd
  end
end
