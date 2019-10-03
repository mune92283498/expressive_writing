class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
  end

  def show
  end
  
  def new
    @emotion = Emotion.new
  end

  def edit
  end
end
