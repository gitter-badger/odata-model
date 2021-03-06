# CHANGELOG

## 0.6.7

* Added implementation of OData::Model#update_attributes.
* Added OData::Model.find implementation.

## 0.6.6

* Added OData::Model::QueryProxy#empty?

## 0.6.5

* Updated implementation of OData::Model::QueryProxy#is.

## 0.6.4

* Fixed bug in OData::Model::Associations.create_association_accessors.

## 0.6.3

* Fixed issued in recording persistence in OData::Model::Persistence#save.

## 0.6.2

* Fixed issue in OData::Model::Persistence#save not calling underlying OData
  service correctly.

## 0.6.1

* Added support for declaring association class_name as a string.

## 0.6.0

* Updated to work with OData gem version 0.6.0
* Integrated support for OData gem's support for associations

## 0.5.x

* Lots of changes

## 0.4.1

* Added validation a property exists for an Entity when setting up its mapping.

## 0.4.0

* Removed strict dependency on ActiveModel.
* Added `limit_default_selection` setting to limit default queries to only the
  supplied properties of a model.

## 0.3.0

* Added OData::Model::Railtie for Ruby on Rails integration.

## 0.2.0

* Added `odata_service_name` to private API methods
* Added `for_entity` as alternative to `use_entity_set`

## 0.1.1

* Added bin/odata-model
  * `list` command lists available EntitySets and their type
  * `generate` command generates a boilerplate model class

## 0.1.0

* Basic model behavior via property mapping and query interface.