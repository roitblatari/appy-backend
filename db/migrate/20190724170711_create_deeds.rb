class CreateDeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :deeds do |t|
      t.string :title
      t.string :user_giver_id
      t.string :user_receiver_id
      t.string :content
      t.string :image_url

      t.timestamps
    end
  end
end
