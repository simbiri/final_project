class CreateFollowRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :follow_requests do |t|
      t.integer :sent_follow_request
      t.integer :received_follow_request
      t.string :request_status

      t.timestamps
    end
  end
end
