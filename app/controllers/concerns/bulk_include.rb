module BulkInclude
  extend ActiveSupport::Concern

  class_methods do
    def bulk_include(*classes)
      classes.each {|klass| include klass }
    end
  end
end
