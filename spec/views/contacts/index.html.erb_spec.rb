require 'spec_helper'

describe "contacts/index.html.erb" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :user_name => "User Name",
        :email => "Email"
      ),
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :user_name => "User Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
