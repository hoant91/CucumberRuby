class LoginPage
  attr_accessor :loginTab,:txtUsername,:txtPassword,:btnLogin

  def initialize(browser)
    @browser = browser
    @loginTab    = @browser.a(text: "Sign in")
    @txtUsername = @browser.text_field(id: "email")
    @txtPassword = @browser.text_field(id: "passwd")
    @btnLogin    = @browser.element(id: "SubmitLogin")
  end

  def visit
    @browser.goto "http://automationpractice.com"
  end

  def clickLoginTab()
    @loginTab.click
  end

  def enterUsername(username)
    @txtUsername.set 'hoant1149@gmail.com'
  end

  def enterPassword(password)
    @txtPassword.set '123456'
  end

  def clickLoginButton
    @btnLogin.click
  end

  def verifyHomePageHeader()
    @browser.element(text: "Hoa Nguyen").wait_until_present
  end
end