class PlayerrSearch
  include ActiveModel::Model
  include Virtus.model
  attribute :query, String, default: ""
  attribute :author_id, Integer, default: nil
  attribute :category_id, Integer, default: nil
  attribute :conditions, Array, default: []
  attribute :price_from, Integer, default: nil
  attribute :price_to, Integer, default: nil
  attribute :per_page, Integer, default: 25
  attribute :paginated, Boolean, default: true
 
  attribute :page, Integer, default: 1
end