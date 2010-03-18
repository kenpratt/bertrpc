require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mocha'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'bertrpc'

class Enc
  include BERTRPC::Encodes
end

def to_bytes(str)
  bytes = []
  str.each_byte {|b| bytes << b }
  bytes
end
