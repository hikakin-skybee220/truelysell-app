# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end


  # test "account_activation" do
  #   user = users(:michael)
  #   user.activation_token = User.new_token  #ここで、有効化トークンを取得しないと空白になるので注意。
  #   mail = UserMailer.account_activation(user)
  #   assert_equal "Account activation", mail.subject
  #   assert_equal [hikarureihika@gmail.com], mail.to
  #   assert_equal ["noreply@example.com"], mail.from
  #   assert_match user.name,               mail.body.encoded
  #   assert_match user.activation_token,   mail.body.encoded
  #   assert_match CGI.escape(user.email),  mail.body.encoded
  # end

end
