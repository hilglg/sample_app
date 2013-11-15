json.array!(@accounts) do |account|
  json.extract! account, :Account, :Name, :Site, :AccountType, :MainPhone, :MainFax
  json.url account_url(account, format: :json)
end