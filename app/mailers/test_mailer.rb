class TestMailer < ApplicationMailer
    default from: 'default@example.com'

  def testmail(str)
    @str = str
    mail(to: "hikaru_iphone11pro@icloud.com", subject: "テストやでー")
  end
end
