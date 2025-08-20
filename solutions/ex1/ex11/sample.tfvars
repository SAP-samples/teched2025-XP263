globalaccount   = "<your-global-account-subdomain>" #<- Replace with your global account subdomain
username        = "<your-username>" #<- Replace with your SAP BTP username
password        = "<your-password>" #<- Replace with your SAP BTP password
idp             = "<value-for-the-idp>" #<- Replace with your identity provider
subsidiary_name = "Weyland Corporation Core"
subaccounts = {
  "Sales App 1" = {
    region         = "eu10"
    cost_center    = "CC12345"
    contact_person = "michael.bishop@weyland-corp.com"
  },
  "Fin App 1" = {
    region         = "us10"
    cost_center    = "CC67890"
    contact_person = "carter.burke@weyland-corp.com"
  }
}
