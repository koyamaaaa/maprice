class UsersController < ApplicationController
  def signup
    # ユーザー登録フォームを表示する
    render "/users/signup"
  end

  def create
    # ユーザー登録フォームから値を取得してインスタンスにセットする
    # インスタンスをモデルに登録する
    # 登録した内容のユーザーページを表示する
  end

  def edit
    # 該当のユーザーデータをフォームに反映する
    # 該当のユーザーデータ内容を表示する
  end

  def update
    # 変更したユーザーデータをフォームから取得してインスタンスにセットする
    # 変更した内容でユーザーデータを更新する
    # 変更した内容のユーザーページを表示する
  end

  def destroy
    # 該当のユーザーを削除する
    # ユーザー一覧画面を表示する
  end
end
