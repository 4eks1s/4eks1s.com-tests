def getHomeWorkPage()
  response = API.get(@base_url + "homework",
                      headers: {},
                      cookies: {})

  assert_status_code(200, response, "homework")
end
