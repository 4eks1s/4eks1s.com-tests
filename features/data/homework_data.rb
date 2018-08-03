def getHomeWorkData(cond)
  case cond
  when 'pos1d'; return Homework.new('test@gopo.co', @homework_key, '1 diena', 200, 'upload 1d homework')
  when 'pos1n'; return Homework.new('test@gopo.co', @homework_key, '1 nedēļa', 200, 'upload 1n homework')
  when 'pos2n'; return Homework.new('test@gopo.co', @homework_key, '2 nedēļas', 200, 'upload 2n homework')

  when 'empty'; return Homework.new('', '', '', 422, 'upload empty homework')
  when 'inKey'; return Homework.new('test@gopo.co', 'test', '1 diena', 422, 'upload invalid Key homework')
  when 'inEmail'; return Homework.new('testgopo', @homework_key, '1 diena', 422, 'upload invalid Email homework')
  when 'inTime'; return Homework.new('test@gopo.co', @homework_key, '3 dienas', 403, 'upload invalid Day homework')
  when 'inKey-inEmail'; return Homework.new('test@gopoco', 'test', '1 diena', 422, 'upload invalid Key&Email homework')
  when 'inKey-inTime'; return Homework.new('test@gopo.co', 'test', '5 dienas', 422, 'upload invalid Key&Time homework')
  when 'inTime-inEmail'; return Homework.new('test@gopoco', @homework_key, '5 diena', 422, 'upload invalid Time&Email homework')
  when 'inTime-inEmail-inKey'; return Homework.new('test@gopoco', 'test', '16 diena', 422, 'upload invalid Key&Email&Time homework')

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
