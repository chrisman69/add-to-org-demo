require 'add-to-org'

AddToOrg.set_validator do |github_user, verified_emails, client|
  verified_emails.any? { |email| email[:email] =~ /@imperial\.ac.uk\z/ }
end

run AddToOrg::App
