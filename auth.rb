#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.setup(:default)
require 'rbnacl'

if ARGV.length != 1
  puts "Usage: #{$0} plaintext\n\tplaintext: data"
  exit(1)
end

key = RbNaCl::Random.random_bytes
message = ARGV[0].encode("BINARY")

auth = RbNaCl::HMAC::SHA512.new(key)
digest = auth.auth(message)

key_hex = key.unpack('H*')[0]
digest_hex = digest.unpack('H*')[0]

puts "Key: %s" % key_hex 
puts "Digest: %s" % digest_hex 
puts "\n\nVerify with: ./verify.rb #{key_hex} #{digest_hex} #{message}"
