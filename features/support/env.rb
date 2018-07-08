
base_url = ENV['TEST_URL']
homework_key = ENV['HOMEWORK_KEY']
Before do
  @base_url = base_url
  @homework_key = homework_key
end