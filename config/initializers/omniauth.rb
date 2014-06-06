OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '719641533429-cluj8jbi35mjumrerc9kl5op5qlgv8ck.apps.googleusercontent.com', 'lEAcnIZi_L5zbaQtpF2Gv85i', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

