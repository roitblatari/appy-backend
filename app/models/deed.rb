class Deed < ActiveRecord::Base
  belongs_to :giver,    foreign_key: "giver_id",    class_name: "User" 
  belongs_to :receiver, foreign_key: "receiver_id", class_name: "User"
end
# class Deed < ApplicationRecord
#   belongs_to :user_giver, class_name: "User"
#   belongs_to :user_receiver, class_name: "User"
# end


# app/models/deeds.rb
# class Deed < ActiveRecord::Base
#   belongs_to :giver,    foreign_key: :giver_id,    class_name: "User" 
#   belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"
# end