def generate_string(lenght)
  return (0...lenght).map { (65 + rand(26)).chr }.join
end

def generate_email
  return "#{generate_string(10)}@#{generate_string(5)}.#{generate_string(3)}"
end

def generate_email_invalid
  return "#{generate_string(10)}@#{generate_string(5)}#{generate_string(3)}"
end