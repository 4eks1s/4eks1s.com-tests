require 'test-unit'

def assert_status_code(expected_code, response, action)
  puts "#{expected_code} got #{response.code}"
  assert_equal(expected_code, response.code, "#{action} failed! Status code is not Correct Expected: #{expected_code} Received: #{response.code} Response: #{response}")
end