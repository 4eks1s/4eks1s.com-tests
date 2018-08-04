require_relative '../../features/support/randomGenerator'

def getHomeWorkData(cond)
  case cond
  when 'pos1d'; return Homework.new(generate_email, @homework_key, '1 diena', 200, 'upload 1d homework')
  when 'pos1n'; return Homework.new(generate_email, @homework_key, '1 nedēļa', 200, 'upload 1n homework')
  when 'pos2n'; return Homework.new(generate_email, @homework_key, '2 nedēļas', 200, 'upload 2n homework')

  when 'empty'; return Homework.new('', '', '', 422, 'upload empty homework')
  when 'inKey'; return Homework.new(generate_email, generate_string(9), '1 diena', 422, 'upload invalid Key homework')
  when 'inEmail'; return Homework.new(generate_string(9), @homework_key, '1 diena', 422, 'upload invalid Email homework')
  when 'inTime'; return Homework.new(generate_email, @homework_key, '3 dienas', 422, 'upload invalid Day homework')
  when 'inKey-inEmail'; return Homework.new(generate_email, generate_string(9), '1 diena', 422, 'upload invalid Key&Email homework')
  when 'inKey-inTime'; return Homework.new(generate_email, generate_string(9), '5 dienas', 422, 'upload invalid Key&Time homework')
  when 'inTime-inEmail'; return Homework.new(generate_email_invalid, @homework_key, '5 diena', 422, 'upload invalid Time&Email homework')
  when 'inTime-inEmail-inKey'; return Homework.new(generate_email_invalid, generate_string(9), '16 diena', 422, 'upload invalid Key&Email&Time homework')

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
