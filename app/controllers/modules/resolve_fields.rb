module ResolveFields
  include ValidateJson
  include ParseJson
  include RepairJson

  DEFAULT_PARAM = :all

  def resolve_fields
    params[:fields].then do |data|
      return DEFAULT_PARAM unless data

      parse_json(valid_json?(data) ? data : repair_json(data))
    end
  end
end
