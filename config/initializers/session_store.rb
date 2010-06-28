# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_webshop_session',
  :secret      => '201a6bd8ae77506828ab1005c8b063fcfe5cbe4bfa4fccf7d220e882f8317e260e57b43c875a7aa3b7fcddef0076a1ac9b6731f048a775d77069087f24c02db5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
