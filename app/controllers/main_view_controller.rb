class MainViewController < ApplicationController

  def login
    user = User.where(:Email => params[:Email]).where(:Password => params[:Password]).first
    render json: user
  end

  def userLoad
    user = User.where(:id => params[:UserId])
    render json: user
  end

  def mainPostLoad
    temp = Array.new
    PostAccess.where({FriendID: params[:UserId]}).where({Viewed: 'f'}).each do |k|
    temp << k.PostID
  end
    #render json: Post.includes(:user).where(id: temp)
    render json: Post.eager_load(:user)
  end



  def mainRequestLoad
    temp = Array.new
    @user_friend = Userfriend.where({:UserID => params[:FriendID]}).where({Pending: 'true'}).each do |pa|
      temp << pa.FriendID
    end

    render json: Userfriend.where(FriendID: temp)
  end

  def mainCounterLoad
    temp = Array.new

    counterdata = Post.where({:UserID => params[:UserID]}).each do |k|
      temp << k.Counter
    end
    arr = Post.where(UserID: temp)
    render :json

  end

end
