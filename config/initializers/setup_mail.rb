ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "localhost",
  :user_name            => "shobhab@revol-tech.com.np",
  :password             => "bhaktapur11",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
