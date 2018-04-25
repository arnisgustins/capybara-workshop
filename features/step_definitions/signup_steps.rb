When(/^I am on Appimation home page/) do
  visit('/')
  # "Try now" button
  find(:css, "#start_button")
  find(:xpath, "//button[@id = 'start_button']")
  # "Sign up" button
  find(:css, "#signup-b")
  find(:xpath, "//button[@id = 'signup-b']")
  # "Contact us" section
  find(:css, "#cta")
  find(:xpath, "//section[@id = 'cta']")
  # "Contact us" name input
  find(:css, "input[name='name']")
  find(:xpath, '//input[@name="name"]')
  # "Contact us" email input
  find(:css, "input[name='from']")
  find(:xpath, "//input[@name='from']")
  # "Contact us" email input
  find(:css, "textarea[name='body']")
  find(:xpath, "//textarea[@name='body']")
  # "Contact us" send button
  find(:css, "input[id='contactus-button']")
  find(:xpath, "//input[@id='contactus-button']")
  # Facebook logo at the bottom of page
  find(:css, ".icon.fa-facebook")
  find(:xpath, "//a[@target = '_blank']")
  # All Feature sections in list
  all(:css, ".features-row > section")
  all(:xpath, "//div[@class='features-row']/section")  
  # "Chain Requests with reusable data" image
  find(:css, "img[src*='chain']")
  find(:xpath, "//img[contains(@src, 'chain')]")
end