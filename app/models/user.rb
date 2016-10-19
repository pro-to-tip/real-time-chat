class User
  include Mongoid::Document
  field :name, type: String
  field :username, type: String
  field :image, type: String
end
