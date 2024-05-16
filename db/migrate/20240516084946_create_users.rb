class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :username
      t.string :email
      t.string :role
      t.text :bio
      t.string :website_link
      t.string :prof_picture_url
      t.string :backg_picture_url
      t.string :linked_in_url
      t.string :insta_url
      t.string :faceb_url
      t.string :x_url
      t.boolean :privacy_status
      t.integer :hierarchy_id
      t.integer :branch_id
      t.string :country_em
      t.string :city_name

      t.timestamps
    end
  end
end
