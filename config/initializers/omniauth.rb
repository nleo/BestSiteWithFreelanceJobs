Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.fb_app_id,
    Rails.application.secrets.fb_app_secret, scope: 'email', info_fields: 'email,name'
end
