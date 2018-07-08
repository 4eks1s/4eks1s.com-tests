def getHomeWorkData
   data = Homewrok.new('test@gopo.co', @homework_key, '1 diena', '200', 'upload 1d homework')
  return data
end

class Homewrok
  attr_accessor :data, :response_code, :error
  def initialize(email, key, exptime, response_code, error)
    self.data = {
      'username' => email,
      'key' => key,
      'exptime' => exptime
    }
    self.response_code = response_code
    self.error = error
  end
end
