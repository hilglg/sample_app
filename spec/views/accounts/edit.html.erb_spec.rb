require 'spec_helper'

describe "accounts/edit" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :Account => "MyString",
      :Name => "MyString",
      :Site => "MyString",
      :AccountType => "MyString",
      :MainPhone => "MyString",
      :MainFax => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", account_path(@account), "post" do
      assert_select "input#account_Account[name=?]", "account[Account]"
      assert_select "input#account_Name[name=?]", "account[Name]"
      assert_select "input#account_Site[name=?]", "account[Site]"
      assert_select "input#account_AccountType[name=?]", "account[AccountType]"
      assert_select "input#account_MainPhone[name=?]", "account[MainPhone]"
      assert_select "input#account_MainFax[name=?]", "account[MainFax]"
    end
  end
end
