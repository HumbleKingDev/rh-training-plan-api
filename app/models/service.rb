class Service
  include Mongoid::Document
  
  field :code, type: String
  field :name, type: String
  field :details, type: String

  has_many :users, dependent: :destroy
end
