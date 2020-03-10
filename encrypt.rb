#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.setup(:default)
require 'rbnacl'

if ARGV.length != 1
  puts "Usage: #{$0} plaintext\n\tplaintext: unencrypted data"
  exit(1)
end

key = RbNaCl::Random.random_bytes(RbNaCl::SecretBox.key_bytes)
message = ARGV[0].encode("BINARY")

secret_box = RbNaCl::SecretBox.new(key)

nonce = RbNaCl::Random.random_bytes(secret_box.nonce_bytes)
box = secret_box.encrypt(nonce, message)

key_hex = key.each_byte.map { |b| b.to_s(16) }.join
nonce_hex = nonce.each_byte.map { |b| b.to_s(16) }.join
box_hex = box.each_byte.map { |b| b.to_s(16) }.join

puts "Key: %s" % key_hex
puts "Nonce: %s" % nonce_hex
puts "Box: %s" % box_hex
