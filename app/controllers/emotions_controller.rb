class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
  end

  def show
  end
  
  def new
    @emotion = Emotion.new
  end

  def create
    @emotion = Emotion.new(emotion_params)
    if @emotion.save
      redirect_to root_path, notice: '登録しました。'
    else
      flash[:alert] = '登録できませんでした。'
      render :new
    end
  end

  def edit
  end

  private 
  def emotion_params
    params.require(:emotion).permit(:emotion_name, :emotion_comment)
  end

end
