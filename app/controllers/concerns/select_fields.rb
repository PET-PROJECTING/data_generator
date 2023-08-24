module SelectFields
  extend ActiveSupport::Concern

  class_methods do
    def with_selected_fields(fields)
      self.select(*validated_fields(fields))
    end

    def validated_fields(fields)
      fields.keep_if { |field| field.in?(self.attribute_names) }
    end
  end
end
