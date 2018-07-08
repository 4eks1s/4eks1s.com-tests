def getHomePage()
  response = API.get(@base_url,
                     headers: {},
                     cookies: {})

  assert_status_code(200, response, "home")
end