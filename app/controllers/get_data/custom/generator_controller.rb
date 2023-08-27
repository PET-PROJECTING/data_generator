module GetData
  module Custom
    class GeneratorController < ApplicationController
      bulk_include ResolveLimit,
                   ResolveFields,
                   RenderResponse,
                   ResolveAmount,
                   ResolveObjectType,
                   ParseFields

      def index
        render_custom_json_response(
          data: resolve_amount.times.inject([]) { |res, n| res << { id: n+1, type: resolve_object_type, **parse_fields  } }
        )
      end
    end
  end
end
