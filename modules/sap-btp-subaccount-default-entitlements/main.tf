locals {
  default_entitlements = {
    "Dev" = {
      "auditlog-viewer"         = ["free"],
      "build-workzone-standard" = ["foundation"],
      "cloudfoundry"            = ["standard"],
      "destination"             = ["lite"],
      "malware-scanner"         = ["clamav"],
      "xsuaa"                   = ["application"]
    },
    "Test" = {
      "auditlog-viewer"         = ["free"],
      "build-workzone-standard" = ["foundation"],
      "cloudfoundry"            = ["standard"],
      "destination"             = ["lite"],
      "malware-scanner"         = ["clamav"],
      "xsuaa"                   = ["application"]

    },
    "Prod" = {
      "auditlog-viewer"         = ["free"],
      "build-workzone-standard" = ["foundation"],
      "cloudfoundry"            = ["standard"],
      "destination"             = ["lite"],
      "malware-scanner"         = ["clamav"],
      "xsuaa"                   = ["application"]
    }
  }
}
