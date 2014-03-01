#require_relative '../../lib/base_class'
#require_relative 'common_elements'
#
#class SiteLogin < BaseClass
#  include PageObject, CommonElements, I18n
#
#  text_field(:email,              :id     => 'user_authentication_email')
#  text_field(:password,           :id     => 'user_authentication_password')
#  text_field(:code,               :id     => 'user_authentication_security_token')
#  text_field(:captcha_entry,      :id     => 'recaptcha_response_field')
#
#  div(:captcha_area,              :id     => 'captcha_field')
#  button(:login,                  :name   => 'commit')
#  element(:body, :body, :xpath            => '/html/body')
#  form(:login_form,               :class  => 'user_authentication')
#  link(:forgot_password,          :text   => I18n.t('password_reset.forgot_your_password'))
#  link(:old_website_link,         :class  => 'old-link')
#
#
#  def initialize(browser)
#    super(browser)
#  end
#
#  def login_with(email, password)
#    self.email = email
#    self.password = password
#    click_login
#  end
#
#  def login_with_captcha(email, password)
#    self.email = email
#    self.password = password
#    self.captcha_entry = '*(_)$skrill98712='
#    click_login
#  end
#
#  def click_login
#    wait_for_ajax
#    login
#    wait_for_ajax
#  end
#
#  div(:error_messages,            :id     => 'error-messages')
#  div(:alert_error) do |page|
#    page.error_messages_element.alert_error_element
#  end
#
#  div(:user_account_wrap, :class          => 'user-account-wrap')
#  div(:navigation) do |page|
#    page.user_account_wrap_element.navigation_element
#  end
#
#end
#
#class PasswordReset < SiteLogin
#
#  link(:forgot_password_back_link, :text  => I18n.t('password_reset.back'))
#  div(:password_reset_step_one,    :id    => 'password_reset_box')
#  text_field(:reset_email_entry,   :id    => 'password_reset_email')
#  button(:submit_reset_email,      :value => I18n.t('password_reset.submit'))
#  button(:submit_no_password,      :name  => 'commit')
#
#end
