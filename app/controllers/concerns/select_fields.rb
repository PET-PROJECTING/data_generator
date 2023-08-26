module SelectFields
  extend ActiveSupport::Concern
  ALL_FIELDS = ['*']

  class_methods do
    def with_selected_fields(fields)
      self.select(*validated_fields(fields))
    end

    def validated_fields(fields)
      return ALL_FIELDS if fields == :all

      fields.keep_if { |field| field.in?(self.attribute_names) }
    end
  end
end
