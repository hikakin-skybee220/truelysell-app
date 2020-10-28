class TestMailer < ApplicationMailer
    default from: 'info@herokuapp.com'

  def testmail
    
    mail(to: "hikarureihika@gmail.com", subject: "テストやでー")
  end
end
