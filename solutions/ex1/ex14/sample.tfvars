globalaccount   = "<your-global-account-subdomain>" #<- Replace with your global account subdomain
username        = "<your-username>"                 #<- Replace with your SAP BTP username e.g., XP263-XXX@education.cloud.sap
password        = "<your-password>"                 #<- Replace with your SAP BTP password
idp             = "<value-for-the-idp>"             #<- Replace with your identity provider e.g., ainfvn15r
subsidiary_name = "Weyland Corporation Core"
subaccounts = {
  "Sales App 1" = {
    region         = "eu10"
    cost_center    = "CC-12345"
    contact_person = "michael.bishop@weyland-corp.com"
    department     = "Sales"
  },
  "Fin App 1" = {
    region         = "us10"
    cost_center    = "CC-67890"
    contact_person = "carter.burke@weyland-corp.com"
    department     = "Finance"
  }
}
