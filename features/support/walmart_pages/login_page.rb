module Panel
  class LoginPage < Generic
    def switch_frame_login
      page.driver.browser.switch_to.frame('iframeLogin') unless Capybara.javascript_driver == :poltergeist
    end

    def fill_username(user)
      fill_in('signinField', :with => user)
    end

    def fill_password(pass)
      fill_in('password', :with => pass)
    end

    def click_login
      click_button('signinButtonSend')
    end

    def login(user, pass)
      fill_username(user)
      fill_password(pass)
      click_login
    end

    def switch_frame_default
      page.driver.browser.switch_to.default_content unless Capybara.javascript_driver == :poltergeist
    end

    def text_address
      page.find(:css, 'div.page-title h2').text
    end
  end
end
