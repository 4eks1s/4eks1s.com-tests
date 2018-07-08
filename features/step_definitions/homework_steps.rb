When(/^I request Homework page$/) do
  getHomeWorkPage()
end

When(/^I Upload (.*) Homework$/) do |time|
  uploadHomework(getHomeWorkData(time))
end
