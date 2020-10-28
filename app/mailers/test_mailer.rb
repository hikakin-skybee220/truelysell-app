class TestMailer < ApplicationMailer
    default from: 'sgysl2vm@kke.com'

  def testmail
    
    mail(to: "hikarureihika@gmail.com", subject: "テストやでー")
  end
end
