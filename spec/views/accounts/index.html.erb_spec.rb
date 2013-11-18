require 'spec_helper'

describe "accounts/index" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :Account => "Account",
        :Name => "Name",
        :Site => "Site",
        :AccountType => "Account Type",
        :MainPhone => "Main Phone",
        :MainFax => "Main Fax"
      ),
      stub_model(Account,
        :Account => "Account",
        :Name => "Name",
        :Site => "Site",
        :AccountType => "Account Type",
        :MainPhone => "Main Phone",
        :MainFax => "Main Fax"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Account".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
    assert_select "tr>td", :text => "Account Type".to_s, :count => 2
    assert_select "tr>td", :text => "Main Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Main Fax".to_s, :count => 2
  end

  describe "click Edit account with row selected" , :js => true do
    before do
      visit accounts
      page.find(:xpath, "//table/tbody/tr/td").click
      click_link "Menu"
      click_link "Edit Account"
    end
    #response.should redirect_to(accounts_url)
    #expect(page.find(:xpath, "//table/tbody/tr/td").style.background).to have 

  end
end
