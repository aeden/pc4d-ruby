# Practical Cryptography for Developers (in Ruby)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Faeden%2Fpc4d-ruby.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Faeden%2Fpc4d-ruby?ref=badge_shield)


This repository contains examples of how to use various Ruby libraries to perform cryptographic operations safely and with purpose. 

The primary purposes of cryptography are:

- Confidentiality
- Integrity
- Non-repudiation
- Authentication

The examples in this repository depend on the [https://github.com/RubyCrypto/rbnacl](https://github.com/RubyCrypto/rbnacl) gem and the libsodium C library.

## Examples

To install dependencies, run `make`

### Confidentiality

Symmetric examples: `encrypt.rb` & `decrypt.rb`

Asymmetric examples: `pkencrypt.rb` & `pkdecrypt.rb`

Run either `encrypt.rb` or `pkencrypt.rb` with the appropriate arguments and the final output should show the command required to decrypt.

### Integrity

Hash example: `hash.rb`

Run `hash.rb` with the same input argument and you should get the same output argument every time.

Asymmetric example: `pksign.rb` & `pkverify.rb`

Run `pksign` with the appropriate arguments and the final output should show the command required to verify.

### Non-repudiation

Asymmetric examples: `pksign.rb` & `pkverify.rb`

Run `pksign` with the appropriate arguments and the final output should show the command required to verify.

### Authentication

Symmetric example: `auth.rb` & `verify.rb`

Run `auth.rb` with the appropriate arguments and the final output should show the command required to verify.



## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Faeden%2Fpc4d-ruby.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Faeden%2Fpc4d-ruby?ref=badge_large)