class TestMailer < ApplicationMailer
    default from: 'info@truelysell-app.herokuapp.com'

  def testmail
    
    mail(to: "hikarureihika@gmail.com", subject: "テストやでー")
  end
end
