module ParseFields
  include ::ResolveFields

  def parse_fields
    resolve_fields.each_with_object({}) do |(field_nm, field_type), res|
      res.store(field_nm, type_to_faker(field_type))
    end
  end

  private

  def type_to_faker(field_type)
    case field_type
    when "string" then Faker::Lorem.word
    when "datetime" then Faker::Date.in_date_period(month: 2)
    when "integer" then Faker::Number.number(digits: 5)
    when "id" then Faker::IDNumber.valid
    else eval(field_type)
    end
  end
end
