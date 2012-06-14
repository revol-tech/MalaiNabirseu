ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "localhost",
  :user_name            => "malainabirseu@gmail.com",
  :password             => "malai_nabirseu",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
