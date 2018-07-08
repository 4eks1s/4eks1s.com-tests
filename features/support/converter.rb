require 'uri'

def convertToUrl(hash)
  URI.encode(hash.map { |k, v| "#{k}=#{v}" }.join("&"))
end
