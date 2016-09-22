module Polaris
  module PageObject
    module Pages
      class Appointment < SitePrism::Page

        element :edit_button, 'a[class$="cmx-button"]'
        elements :action_items, '.user_action_items div'
        elements :action_item_checkboxes, '.user_action_items label'
        element :save_button, 'input.ui'

        # I want to select an action item for outstanding paperwork
        # @param items [string] A selection for an action item(s)
        def outstanding_paperwork(items)
          edit_button.click
          sleep 1
          # set all to false first
          action_item_checkboxes.each_with_index { |at| at.set(false) }
          sleep 3
          action_items.each_with_index do |item_test,index|
            action_item_checkboxes[index].click if item_test.text == items
          end
          save_button.click
          sleep 3
          # action_items = items.split(",")
          # action_items.each do |item|
          #   action_item_checkboxes.click if item.text == action_items
            end
          end
        end
      end
    end
  #end
