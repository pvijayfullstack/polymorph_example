require 'spec_helper'

describe "contacts/edit.html.erb" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :first_name => "MyString",
      :last_name => "MyString",
      :user_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path(@contact), :method => "post" do
      assert_select "input#contact_first_name", :name => "contact[first_name]"
      assert_select "input#contact_last_name", :name => "contact[last_name]"
      assert_select "input#contact_user_name", :name => "contact[user_name]"
      assert_select "input#contact_email", :name => "contact[email]"
    end
  end
end
