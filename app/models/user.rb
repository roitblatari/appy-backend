class User < ApplicationRecord
  # has_many :given_deeds,    foreign_key: "giver_id",    class_name: "Deed"
  # has_many :received_deeds, foreign_key: "receiver_id", class_name: "Deed" 

  # has_many :givers, through: :given_deeds
  # has_many :receivers, through: :received_deeds
  has_many :given_deeds,    foreign_key: "giver_id",    class_name: "Deed"
  has_many :received_deeds, foreign_key: "receiver_id", class_name: "Deed" 

  has_many :receivers, through: :given_deeds
  has_many :givers, through: :received_deeds

  has_secure_password

end
