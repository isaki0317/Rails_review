class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    # authenticateはmodelに追加したhas_secure_passwordを追加することで使える認証メソッド(引数のpasswordをハッシュ化して照合する)
    if user&.authenticate(session_params[:password])
      # sessionにuser_idを追加
      session[:user_id] = user.id
      redirect_to root_path, notice: 'ログインしました。'
    else
      render :new
    end
  end

  private
  def session_params
    params.require(:session).permit(:email, :password)
  end

end
