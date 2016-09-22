#common methods that are not specific to any feature file and can be used anytime/anywhere.

require 'site_prism'

module Polaris
  module PageObject
    module Pages

      # class BasePage < SitePrism::Page
      #   include RSpec::Matchers

        class BasePage < SitePrism::Page
          elements :headers, 'th' #collection table headers
          elements :rows, 'tr' #collection of table rows

        def navigation_timeout
          Capybara.default_wait_time
        end
        # maximizes the current browser size
        def maximize_browser
          page.driver.browser.manage.window.maximize
        end

        # navigates to a specified page
        def navigate_to(url)
          self.visit url
        end

        # returns current page url
        def current_url
          page.driver.browser.current_url
        end

        # refreshes the current page.
        def refresh_browser
          page.driver.browser.navigate.refresh
          page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertPresentError
        end

        def mouse_over
          #page.execute_script("$(document.getElementsByClassName('odd ATI_MultiEPGRowDataRow_1 ATI_EPGID_1621 tt_trigger tt_1')).trigger('mouseover')")
          page.driver.manage.action(element.native).perform
        end


      end
    end
  end
end

