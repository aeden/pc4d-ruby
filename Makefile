default:
	brew install libsodium || brew upgrade libsodium
	bundle install --path vendor/bundle
