Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer   # :developer devra être remplacé à terme par la stratégie Shibboleth -> Authentification AAI
   # :fields  [ :uid ],
   #  :uid_field =>  :uid
end