class User
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :address, type: String
  field :phone_number, type: String
  
  belongs_to :service
end
