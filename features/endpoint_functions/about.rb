def getAboutPage()
  response = API.get(@base_url + "about",
                     headers: {},
                     cookies: {})

  assert_status_code(200, response, "about")
end