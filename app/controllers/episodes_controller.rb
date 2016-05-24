class EpisodesController < ApplicationController

  before_action :find_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all.order("created_at DESC")
  end

  def show
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)

    if @episode.save
      redirect_to @episode
      flash[:success] = "Episode created successfully."
    else
      render :new
      flash[:error] = "Something went wrong."
    end
  end

  def edit
  end

  def update
    if @episode.update(episode_params)
      redirect_to @episode
      flash[:success] = "Episode updated successfully."
    else
      render :edit
      flash[:error] = "Something went wrong."
    end
  end

  def destroy
    @episode.destroy
    redirect_to root_path
    flash[:success] = "Episode destroyed successfully."
  end

  private
    def episode_params
      params.require(:episode).permit(:title, :description)
    end

    def find_episode
      @episode = Episode.find(params[:id])
    end
end
