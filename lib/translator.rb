# require modules here
require "pry"
require "yaml"

def load_library(path)
  emoticon_spec = YAML.load_file(path)
  return_hash = {
    "get_emoticon" => {},
    "get_meaning" => {}
  }
  emoticon_spec.keys.each do |emoticon_meaning|
    #binding.pry
    return_hash["get_meaning"][emoticon_spec[emoticon_meaning][1]] = emoticon_meaning
  end
  #binding.pry
  backwards_spec = emoticon_spec.invert
  backwards_spec.keys.each do |emoticon_array|
    return_hash["get_emoticon"][emoticon_array[1]] = backwards_spec[emoticon_array]
  end
  #binding.pry

  return_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end