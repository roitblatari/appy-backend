class UserSerializer #< ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  # has_many :given_deeds,    foreign_key: "giver_id",    class_name: "Deed"
  # has_many :received_deeds, foreign_key: "receiver_id", class_name: "Deed" 

  
  # has_many :givers, through: :given_deeds
  # has_many :receivers, through: :received_deeds

  attributes :id, :username, :email, :image_url,  :given_deeds #, :givers, :receivers
  #  has_many :receivers, serializer: UserSerializer

attribute :my_givers do |user|
   user.givers.map do |giver|
    {
      id: giver.id,
      username: giver.username,
      email: giver.email,
      image_url: giver.image_url
    }
    end  
  end


  attribute :my_receivers do |user|
   user.receivers.map do |receiver|
    {
      id: receiver.id,
      username: receiver.username,
      email: receiver.email,
      image_url: receiver.image_url
    }
    end  
  end

end
