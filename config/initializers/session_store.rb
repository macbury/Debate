# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_debate_session',
  :secret      => '20985c568d7fb80ca2f0afd3770ab4184e052f81cedf992773ed4af609cfb278c4760df378c047e31748aa8ea7ebb52e4cbb507400dd08ec193f3ee7f733e57f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
