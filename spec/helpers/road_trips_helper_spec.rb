require 'rails_helper'

def create_road_trip(title)
  click_link 'New road trip'
  fill_in 'Title', with: title
  click_button 'Create Road trip'
end