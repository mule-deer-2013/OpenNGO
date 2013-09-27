require 'spec_helper'

feature "translation" do
  scenario "User switches from english to spanish and back" do
    visit root_path
    click_link "Castellano"
    expect(page).to have_text("Bienvenidos")
    click_link "English"
    expect(page).to have_text("Welcome")
  end
end
