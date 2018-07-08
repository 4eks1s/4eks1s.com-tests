When(/^I request Homework page$/) do
  getHomeWorkPage()
end

When(/^I Upload Homewrok$/) do
  uploadHomework(getHomeWorkData())
end