require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit new_user_registration_path
    user = FactoryGirl.create(:user)
    click_on 'Sign up'
    expect(page).to have_content 'This user is not an admin'
  end
end
