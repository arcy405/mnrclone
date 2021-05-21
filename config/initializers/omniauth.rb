Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '2269086783123884', 'a6e3c3740a9d57cde58891ea37f97aa4'
end