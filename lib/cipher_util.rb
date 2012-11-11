# encoding:utf-8
require 'openssl'
class CipherUtil
  PRIVATE_KEY = "happy_music_life"
  SALT = "98765432"
  
  def self.encrypt(string)
    cipher = OpenSSL::Cipher::Cipher.new("BF-CBC")
    cipher.pkcs5_keyivgen(PRIVATE_KEY, SALT, 1)
    cipher.encrypt
    encrypt_text = cipher.update(string) + cipher.final
    encrypt_text.unpack("H*").join
  end
  
  def self.decrypt(string)
    convert_text = [string].pack("H*")
    cipher = OpenSSL::Cipher::Cipher.new("BF-CBC")
    cipher.pkcs5_keyivgen(PRIVATE_KEY, SALT, 1)
    cipher.update(convert_text) + cipher.final    
  end 
end
