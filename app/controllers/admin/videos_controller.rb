class Admin::VideosController < AdminsController
  
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
     if @video.save
      flash[:success] = "You have added the video: '#{@video.title}'."
      redirect_to new_admin_video_path
    else
      flash[:error] = "Please check the errors."
      render :new
    end
  end

  private  

  def video_params
    params.require(:video).permit(:title, :description, :category_id, :large_cover, :small_cover, :video_url)
  end
end