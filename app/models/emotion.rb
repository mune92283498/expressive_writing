class Emotion < ApplicationRecord
  validates :emotion_name, presence: true
  validates :emotion_comment, presence: true
end
