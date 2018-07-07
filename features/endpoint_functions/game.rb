def getGamesPage()
  response = API.get(@base_url + "games",
                     headers: {},
                     cookies: {})

  assert_status_code(200, response, "games")
end