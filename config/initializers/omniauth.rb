Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer,
    :fields => [ :username ],
     :uid_field =>  :username
end