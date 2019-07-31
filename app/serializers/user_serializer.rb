class UserSerializer #< ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  # has_many :given_deeds,    foreign_key: "giver_id",    class_name: "Deed"
  # has_many :received_deeds, foreign_key: "receiver_id", class_name: "Deed" 

  
  # has_many :givers, through: :given_deeds
  # has_many :receivers, through: :received_deeds

  attributes :id, :username, :email, :image_url, :givers, :receivers, :given_deeds 
end
