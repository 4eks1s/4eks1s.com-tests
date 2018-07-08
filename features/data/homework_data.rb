def getHomeWorkData(cond)
  case cond
  when 'pos1d'; return Homework.new('test@gopo.co', @homework_key, '1 diena', 200, 'upload 1d homework')
  when 'pos1n'; return Homework.new('test@gopo.co', @homework_key, '1 nedēļa', 200, 'upload 1n homework')
  when 'pos2n'; return Homework.new('test@gopo.co', @homework_key, '2 nedēļas', 200, 'upload 2n homework')

  when 'empty'; return Homework.new('', @homework_key, '', 422, 'upload empty homework')

  end
end

class Homework
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
