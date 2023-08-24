module RepairJson
  def repair_json(invalid_json)
    invalid_json.gsub("'", '"')
  end
end
