class SecretSantaMailer < ActionMailer::Base
  default from: "stnick@thenorthpole.com"

  def send_secret_santa_email(group)
    @group = group
    mail(to: group.secret_santa.email, subject: "YOU GOTS TO BUY SOME GIFTS, BRO")
  end
end
