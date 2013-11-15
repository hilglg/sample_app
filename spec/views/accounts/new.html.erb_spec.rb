require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :Account => "MyString",
      :Name => "MyString",
      :Site => "MyString",
      :AccountType => "MyString",
      :MainPhone => "MyString",
      :MainFax => "MyString"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", accounts_path, "post" do
      assert_select "input#account_Account[name=?]", "account[Account]"
      assert_select "input#account_Name[name=?]", "account[Name]"
      assert_select "input#account_Site[name=?]", "account[Site]"
      assert_select "input#account_AccountType[name=?]", "account[AccountType]"
      assert_select "input#account_MainPhone[name=?]", "account[MainPhone]"
      assert_select "input#account_MainFax[name=?]", "account[MainFax]"
    end
  end
end
