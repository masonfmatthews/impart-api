class Api::V1::ClipsController < ApplicationController
  before_action :check_for_token

  def index
    render json: Clip.where(user_id: params[:user_id])
  end

  def show
    render json: Clip.find(params[:id])
  end

  def create
    clip = Clip.create!(clip_params.merge({user: @current_user}))
    render json: {clip_url: clip.clip.url}
  end

  private def clip_params
    params.require(:clip).permit(:name, :user_id, :clip)
  end
end
