Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['github_app_id'], ENV['github_app_secret']
end
