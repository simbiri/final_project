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
  # Each user can create many comments, and deleting a user will delete all their comments.
  has_many :comments, class_name: "PostComment", dependent: :destroy

  # A user can send many follow requests. These are deleted if the user is deleted.
  has_many :sent_follow_requests, class_name: "FollowRequest", foreign_key: "sent_follow_request", dependent: :destroy

  # A user can receive many follow requests. These are deleted if the user is deleted.
  has_many :received_follow_requests, class_name: "FollowRequest", foreign_key: "received_follow_request", dependent: :destroy

  # Users can own many posts, and deleting a user will delete all their posts.
  has_many :owned_posts, class_name: "Post", dependent: :destroy

  # Users can 'like' many posts, and these likes are deleted if the user is deleted.
  has_many :likes, dependent: :destroy

  # Users can belong to many workspaces, but if a user is deleted, the foreign key in UserWorkspaces is nullified.
  has_many :workspaces, class_name: "UserWorkspace", foreign_key: "workspace_id", dependent: :nullify

  # Users can author many news articles, but if the user is deleted, these relationships are nullified.
  has_many :news, class_name: "News", foreign_key: "journalist_id", dependent: :nullify

  # Users can assign many tasks to others, and these tasks are deleted if the creator (assigner) is deleted.
  has_many :task_to_give, class_name: "Task", foreign_key: "assigned_by_id", dependent: :destroy

  # Users can be assigned many tasks by others, and these tasks are deleted if the assignee is deleted.
  has_many :duty_to_complete, class_name: "Task", foreign_key: "assigned_to_id", dependent: :destroy

  # Users can chair many meetings, and these meetings are deleted if the chairperson is deleted.
  has_many :chaired_meetings, class_name: "Meeting", foreign_key: "chairperson_id", dependent: :destroy

  # Users can be invited to many meetings, and these participant records are deleted if the participant is deleted.
  has_many :meetings_invited_to, class_name: "MeetingParticipant", foreign_key: "participant_id", dependent: :destroy

  # Users can be featured in many news articles, and these articles are deleted if the featured user is deleted.
  has_many :news_featured_in, class_name: "News", foreign_key: "featuring_user_id", dependent: :destroy

  # Indirect association through likes, allowing access to posts a user has liked.
  has_many :liked_posts, through: :likes, source: :post

  # Indirect association, accessing meetings the user is invited to.
  has_many :meeting_invitations, through: :meetings_invited_to, source: :meeting_invited

  # Users can view a feed of posts from users they follow, an indirect link through received follow requests.
  has_many :feed, through: :received_follow_requests, source: :owned_posts
end
