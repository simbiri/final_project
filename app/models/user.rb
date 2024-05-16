# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  backg_picture_url :string
#  bio               :text
#  city_name         :string
#  country_em        :string
#  email             :string
#  faceb_url         :string
#  first_name        :string
#  insta_url         :string
#  last_name         :string
#  linked_in_url     :string
#  privacy_status    :boolean
#  prof_picture_url  :string
#  role              :string
#  username          :text
#  website_link      :string
#  x_url             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  branch_id         :integer
#  hierarchy_id      :integer
#
class User < ApplicationRecord
end
