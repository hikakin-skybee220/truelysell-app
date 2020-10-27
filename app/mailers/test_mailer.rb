class TestMailer < ApplicationMailer
    default from: 'default@example.com'

  def testmail(str)
    @str = str
    mail(to: "hikarureihika@gmail.com", subject: "テストやでー")
  end
end
