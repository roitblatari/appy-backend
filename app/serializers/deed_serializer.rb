class DeedSerializer #< ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer

  belongs_to :giver,    foreign_key: "giver_id",    class_name: "User" 
  belongs_to :receiver, foreign_key: "receiver_id", class_name: "User" #, serializer: UserSerializer

  attributes :id, :title, :content, :image_url, :giver_id, :receiver_id 
end
