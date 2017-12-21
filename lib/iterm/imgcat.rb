require "iterm/imgcat/version"
require "open-uri"
require "base64"

module Iterm
  module Imgcat
    def get_and_print_image(url)
      image_binary = open(url).read
      encoded_image = Base64.encode64(image_binary)
      puts "\x1B]1337;File=inline=1:#{encoded_image}\x07"
    end
  end
end
