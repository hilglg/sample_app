require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :Account => "Account",
      :Name => "Name",
      :Site => "Site",
      :AccountType => "Account Type",
      :MainPhone => "Main Phone",
      :MainFax => "Main Fax"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account/)
    rendered.should match(/Name/)
    rendered.should match(/Site/)
    rendered.should match(/Account Type/)
    rendered.should match(/Main Phone/)
    rendered.should match(/Main Fax/)
  end
end
