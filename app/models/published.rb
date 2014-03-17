class Published
  include Mongoid::Document
  field :name, type: String
  field :origin, type: Date
end
