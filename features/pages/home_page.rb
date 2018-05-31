class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    # For Contact Us (from lectures)
    @input_name_contact_us = Element.new(:css, '#name')
    @input_email_contact_us = Element.new(:css, '#email')
    @input_message_contact_us = Element.new(:css, '#contactus-message')

    # For Sign Up form
    @button_start = Element.new(:css, '#start_button')
    @signup_form = Element.new(:css, '#signup')
    @signup_button_close = Element.new(:css, "#signup .closecross")
    @signup_input_email = Element.new(:css, "#signup input[name='login']")
    @signup_input_password1 = Element.new(:css, "#signup input[name='password1']")
    @signup_input_password2 = Element.new(:css, "#signup input[name='password2']")
    @signup_input_project = Element.new(:css, "#signup input[name='project_name']")

    # For Sign In form
    @signin_form = Element.new(:css, "#login")
    @signin_button = Element.new(:css, "#login-b")
    @signin_input_email = Element.new(:css, "#login input[name='login']")
    @signin_input_password = Element.new(:css, "#login input[name='password']")
    @signin_button_enter = Element.new(:css, ".button.button-block.innerButton")
    @signin_error  = Element.new(:css, "form[action='/login'] .alert-danger .errorText")
  end

  def isVisible
    @button_start.isVisible
    @input_name_contact_us.isVisible
    @signin_button.isVisible
  end

  def load
    visit('/legacy')
  end

  def openSignUp
    @button_start.click
    @signup_form.isVisible
    @signup_button_close.isVisible
  end

  def closeSignUp
    @signup_button_close.click
    @signup_form.isClosed
  end

  def openSignIn
    @signin_button.click
    @signin_form.isVisible
  end

  def isSignInErrorVisible
    @signin_button_enter.click
    sleep(2)
    @signin_error.isVisible
  end

  # Fill Contact Us (from lectures, not needed in my scenarios)
  def enterNameContactUs(name)
    @input_name_contact_us.send_keys(name)
  end

  def clearNameContactUs
    @input_name_contact_us.clear
  end

  def enterEmailContactUs(email)
    @input_email_contact_us.send_keys(email)
  end

  def enterMessageContactUs(message)
    @input_message_contact_us.send_keys(message)
  end

  # Fill Sign Up
  def enterEmailSignUp(email)
    @signup_input_email.send_keys(email)
  end

  def enterPasswordsSignUp(password)
    @signup_input_password1.send_keys(password)
    @signup_input_password2.send_keys(password)
  end

  def enterProjectSignUp(project)
    @signup_input_project.send_keys(project)
  end

  # Fill Sign In
  def enterEmailSignIn(email)
    @signin_input_email.send_keys(email)
  end

  def enterPasswordSignIn(password)
    @signin_input_password.send_keys(password)
  end
end