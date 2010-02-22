# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pipas_impacto_session',
  :secret      => 'fca32eabb76714bf627fb4e24f04588738ad599e2ca1b04b197f9f8e6bb6e40e6894477450338ac90abdf0b4714e784c0319351393f161c9bc448d23d670577f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
