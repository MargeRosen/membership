# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Membership::Application.config.secret_key_base = 'd62a68bf9d82923c4c43d0ecf244584ef86a96a8c99f4bf4695a9be3a58389440b6ce88377fd37e09de44e1154c079ea49051dc1773aec54986b7d3089786ea6'
