require 'spec_helper'
require 'capybara/rails'


feature 'Orgs' do

	context "#new" do
	# running out of steam tonight.  Will tackle this again tomorrow.
	  it "can create a new org" do
	     visit '/orgs/new'
	     expect {
	       fill_in 'org_name',   with: "Fundacion CONIN"
	       fill_in 'org_initials', with: "CONIN"
	       choose 'our full name'
	       fill_in 'org_address', with: "Callao 25"
	       fill_in 'org_city', with: "Buenos Aires"
	       # select 'Mendoza', from: 'Province:'
	       fill_in 'org_telephone', with: '(05411) 43849009'
	       fill_in 'org_fax', with: '4384-9009 int 1213'
	       click_button 'Save & Create Profile'
	     }.to change { Org.count }.by(1)
	  end
	end
end