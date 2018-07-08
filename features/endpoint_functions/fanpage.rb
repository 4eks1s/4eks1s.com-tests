def getFanpagePage()
  response = API.get(@base_url + "fanpage",
                     headers: {},
                     cookies: {})

  assert_status_code(200, response, "fanpage")
end