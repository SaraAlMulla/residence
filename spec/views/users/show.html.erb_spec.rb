require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :contact_email => "Contact Email",
      :contact_phone => 1,
      :Admin => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Contact Email/)
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
