module RenderResponse
  include ::ResolveFields

  def render_default_json_response(data:, model:, status_cd: :ok, status: 'Success', custom_message: nil)
    render json: {
      data: data,
      status: status,
      message: custom_message || %Q(#{model} records were loaded),
      details: resolve_details_message(model)
    }, status: status_cd
  end

  def render_custom_json_response(data:, status_cd: :ok, status: 'Success', custom_message: nil)
    render json: {
      data: data,
      status: status,
      message: custom_message || %Q(Data was generated successfully),
    }, status: status_cd
  end

  def resolve_details_message(model)
    if resolve_fields == :all
      %Q(Loaded with #{resolve_fields} fields)
    else
      %Q(Loaded with #{resolve_fields} fields. The next #{model} model attributes are also available #{model.attribute_names - resolve_fields})
    end
  end
end
