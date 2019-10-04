class Example < ApplicationRecord
  belongs_to :user
  has_many :example_score, dependent: :destroy

  def favorited_by?(user)
      example_scores.where(user_id: user.id).exists?
  end
end
