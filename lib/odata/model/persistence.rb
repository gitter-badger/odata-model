module OData
  module Model
    # The OData::Model::Persistence module encapsulates all the functionality
    # specifically needed for OData::Model to persist data to and from the
    # OData gem.
    module Persistence
      extend ActiveSupport::Concern

      included do
        # ...
      end

      # A simple initializer that just accepts a hash and sets any matching
      # accessors with the supplied value
      def initialize(attr_values = {})
        attr_values.each do |attr_name, value|
          begin
            send("#{attr_name.to_sym}=", value)
          rescue NoMethodError
            next
          end
        end
      end

      # Returns whether the current instance has been persisted.
      # @return [Boolean]
      def persisted?
        if instance_variable_defined?(:@persisted)
          instance_variable_get(:@persisted)
        else
          instance_variable_set(:@persisted, false)
          instance_variable_get(:@persisted)
        end
      end

      # Save the current model.
      def save
        self.class.odata_service[odata_entity_set_name] << odata_entity
        instance_variable_set(:@persisted, true) unless odata_entity.any_errors?
        #changes_applied
      end

      # Reload the model from OData
      def reload!
        # TODO reload OData entity
        #reset_changes
      end

      # Methods mixed in at the class level.
      module ClassMethods
        # ...
      end
    end
  end
end