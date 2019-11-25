class Deed < ActiveRecord::Base
  belongs_to :giver,    foreign_key: "giver_id",    class_name: "User" 
  belongs_to :receiver, foreign_key: "receiver_id", class_name: "User"

  scope :display_deeds, ->  { where("created_at > ?", 40.days.ago) }
end
