
def getHomeWorkPage()
  response = API.get(@base_url + 'homework',
                      headers: {},
                      cookies: {})

  assert_status_code(200, response, "homework")
end

def uploadHomework(data)
  response = API.post(@base_url + 'homework/upload?' + convertToUrl(data.data),
                      headers: {'Content-Type' => 'application'},
                      cookies: {},
                      payload: {})

  assert_status_code(data.response_code, response, data.error)
end