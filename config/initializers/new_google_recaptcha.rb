if Object.const_defined?('NewGoogleRecaptcha')
  NewGoogleRecaptcha.setup do |config|
    config.site_key   = "6LfybToaAAAAAKP__T8Mf-W71q_F0tuGuaVBTjP9"
    config.secret_key = "6LfybToaAAAAAI8eG5evbnPJA7RGw0z4ImPFQhH7"
    config.minimum_score = 0.5
  end
end
