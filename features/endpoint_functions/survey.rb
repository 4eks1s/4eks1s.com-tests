def getSurveyPage()
  response = API.get(@base_url + "survey",
                     headers: {},
                     cookies: {})

  assert_status_code(200, response, "survey")
end