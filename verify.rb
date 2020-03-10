#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.setup(:default)
require 'rbnacl'

if ARGV.length != 3
  puts "Usage: #{$0} key digest plaintext\n\tkey: hex key\n\tdigest: hex digest\n\tplaintext: data"
  exit(1)
end

key_hex = ARGV[0]
digest_hex = ARGV[1]

key = [key_hex].pack('H*')
digest = [digest_hex].pack('H*')
message = ARGV[2].encode("BINARY")

auth = RbNaCl::HMAC::SHA512.new(key)
if auth.verify(digest, message)
  puts "Verified"
else
  puts "NOT verified"
end
