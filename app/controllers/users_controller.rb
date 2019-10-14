class UsersController < ActionController::Base

  def index
    @users = User.all
    render '/admin_menu/users/index'
  end
  def signup
    @user = User.new
    render '/admin_menu/users/signup'
  end

  def show
    @user = User.find(params[:id])
    render '/admin_menu/users/show'
  end

  def create
    # ユーザー登録フォームから値を取得してインスタンスにセットする
    @user = User.new(user_params)
    # インスタンスをモデルに登録する
    if @user.save
    # 登録した内容のユーザーページを表示する
      redirect_to controller: :users, action: :show, id: @user.id
    else
      render 'new'
    end
  end

  def edit
    # 該当のユーザーデータをフォームに反映する
    @user = User.find(params[:id])
    # 該当のユーザーデータ内容を表示する
    render '/admin_menu/users/edit'
  end

  def update
    # 変更したユーザーデータをフォームから取得してインスタンスにセットする
    @user = User.find(params[:id])
    # 変更した内容でユーザーデータを更新する
    if @user.update_attributes(user_params)
    # 変更した内容のユーザーページを表示する
      redirect_to controller: :users, action: :show, id: @user.id
    else
      render '/admin_menu/users/edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
    # 成功時のメッセージを格納する
      flash[:success] = "ユーザーを削除しました"
    # ユーザー一覧画面を表示する
      redirect_to controller: :users, action: :index
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
