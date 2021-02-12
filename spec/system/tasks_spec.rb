require 'rails_helper'

describe 'タスク管理機能', type: :system do
  describe '一覧表示機能' do
    let!(:user_a) { create(:user) }
    let!(:task_a) { create(:task, user: user_a) }
    context 'ユーザーAがログインしているとき' do
      before do
        visit login_path
        fill_in 'メールアドレス', with: 'a@example.com'
        fill_in 'パスワード', with: 'password'
        click_button 'ログインする'
      end

      it 'ユーザーAが作成したタスクが表示されている' do
        expect(page).to have_content '最初のタスク'
      end
    end
  end
end