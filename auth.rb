#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.setup(:default)
require 'rbnacl'
require 'base64'

key = RbNaCl::Random.random_bytes
message = ARGV[0].encode("BINARY")
auth = RbNaCl::HMAC::SHA512.new(key)
digest = auth.auth(message)

key_hex = key.each_byte.map { |b| b.to_s(16) }.join
digest_hex = digest.each_byte.map { |b| b.to_s(16) }.join

puts "Key: %s" % key_hex 
puts "Digest: %s" % digest_hex 
puts "\n\nVerify with: ./verify.rb #{key_hex} #{digest_hex} #{message}"
