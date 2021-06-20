class FollowRelationship < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followee, class_name: 'User'
  validates :follower, uniqueness: { scope: :followee }
  validate :not_self?

  def not_self?
    errors.add(:follower, 'Cannot follow self') if follower.id == followee.id
  end
end