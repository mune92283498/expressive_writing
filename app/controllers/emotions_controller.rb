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
      redirect_to root_path, notice: "感情「#{@emotion.emotion_name}」を登録しました。"
    else
      flash[:alert] = "「#{@emotion.emotion_name}」を登録できませんでした。"
      render :new
    end
  end

  def edit
    @emotion = Emotion.find(params[:id])
  end

  def update
    @emotion = Emotion.find(params[:id])
    if @emotion.update(emotion_params)
      redirect_to root_path, notice: "感情「#{@emotion.emotion_name}」を更新しました。"
    else
      flash[:alert] = "「#{@emotion.emotion_name}」を更新できませんでした。"
      render :edit
    end
  end

  def destroy
    @emotion = Emotion.find(params[:id])
    @emotion.destroy
    redirect_to root_path, notice: "感情「#{@emotion.emotion_name}」を削除しました。"
  end

  private 
  def emotion_params
    params.require(:emotion).permit(:emotion_name, :emotion_comment)
  end

end
