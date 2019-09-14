class EmotionsController < ApplicationController
  def new
    @emotion = Emotion.new
  end
end
