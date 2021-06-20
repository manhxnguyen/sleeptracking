class User < ApplicationRecord
  validates_presence_of :name
  has_one :clock, dependent: :destroy
  has_many :sleep_records, dependent: :destroy
  has_many :follower_relationships, class_name:  'FollowRelationship',
                                    foreign_key: 'follower_id',
                                    dependent:   :destroy
  has_many :followee_relationships, class_name:  'FollowRelationship',
                                    foreign_key: 'followee_id',
                                    dependent:   :destroy
  has_many :followers, through: :followee_relationships
  has_many :followees, through: :follower_relationships

  def follow(followee)
    followees << followee
  end

  def unfollow(followee)
    followees.delete(followee)
  end
end
