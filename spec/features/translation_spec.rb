require 'spec_helper'

feature "translation" do
  scenario "User switches from english to spanish and back" do
    visit root_path
    click_link "Castellano"
    expect(current_path).should eql('/es')
    click_link "English"
    expect(current_path).should eql('/en')
  end
end
