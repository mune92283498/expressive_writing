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
    @emotion = Emotion.find(params[:id])
  end

  def update
    @emotion = Emotion.find(params[:id])
    if @emotion.update(emotion_params)
      redirect_to root_path, notice: '更新しました。'
    else
      flash[:alert] = '更新できませんでした。'
      render :edit
    end
  end

  private 
  def emotion_params
    params.require(:emotion).permit(:emotion_name, :emotion_comment)
  end

end
