class HomePage < BasePage
    attr_accessor :button_start
  def initialize
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

  def visible?
    @button_start.isVisible
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

  def fillSignUp(email, password, project)
    @signup_input_email.send_keys(email)
    @signup_input_password1.send_keys(password)
    @signup_input_password2.send_keys(password)
    @signup_input_project.send_keys(project)
  end

  def closeSignUp
    @signup_button_close.click
    @signin_form.isClosed
  end

  def openSignIn
    @signin_button.click
    @signin_form.isVisible
  end

  def fillSignIn(email, password)
    @signin_input_email.send_keys(email)
    @signin_input_password.send_keys(password)
    @signin_button_enter.click
    sleep(1) #Savadak error nepaspej paradities
    @signin_error.isVisible
  end

end
