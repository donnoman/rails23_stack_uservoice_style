# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails23_stack_uservoice_style_session',
  :secret      => 'c013b2ae49f3817476d77c8def9d0ef9c0a1e72ba7da17b425b6115112da67c3fa657797d46e34c96704ff7378dfe7c8c92bc114bdc9c8d4ee5e9ab6abdc64b7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
