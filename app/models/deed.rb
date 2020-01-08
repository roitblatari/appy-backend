class Deed < ActiveRecord::Base
  # include ActiveModel::Validations
  belongs_to :giver,    foreign_key: "giver_id",    class_name: "User" 
  belongs_to :receiver, foreign_key: "receiver_id", class_name: "User"

  scope :display_deeds, ->  { where("created_at > ?", 40.days.ago) }

  # validates! :title, presence: true
  # validates! :content, presence: true
  
end
