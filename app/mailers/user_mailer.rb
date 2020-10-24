class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    # @user = user
    # mail to: user.email, subject "件名"
    # @greeting = "Hi"

    # mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @greeting = "Hi"
    @user = User.find(user.id)
    # @url  = edit_password_reset_url(@user.reset_password_token)
    # mail(:to => user.email,
    #      :subject => "Reset your password")

    mail to: user.email, subject: "Reset your password"
  end

  def reset_password_email(user)
  end
end
