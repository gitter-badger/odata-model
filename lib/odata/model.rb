require 'active_support'
require 'active_support/core_ext'
require 'active_support/concern'

require 'odata'

require 'odata/model/version'
require 'odata/model/active_model' if defined?(::ActiveModel)
require 'odata/model/configuration'
require 'odata/model/attributes'
require 'odata/model/associations'
require 'odata/model/persistence'
require 'odata/model/query'
require 'odata/model/query_proxy'

require 'odata/model/railtie' if defined?(::Rails)

# OData is the parent namespace for the OData::Model project.
module OData
  # OData::Model provides a way to map from OData::Entity instances, as
  # returned by the OData gem, to Ruby objects that will work with Rails via
  # the ActiveModel semantics.
  module Model
    extend ActiveSupport::Concern

    include OData::Model::ActiveModel if defined?(::ActiveModel)
    include OData::Model::Configuration
    include OData::Model::Attributes
    include OData::Model::Associations
    include OData::Model::Persistence
    include OData::Model::Query
  end
end
