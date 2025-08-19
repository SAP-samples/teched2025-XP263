locals {
  default_entitlements = {
    "Dev" = {
      "alert-notification" = ["standard"],
      "auditlog"           = ["standard=1"],
      "cloud-logging"      = ["standard=1"],
      "sapappstudio"       = ["build-code"],
      "xsuaa"              = ["application"]
    },
    "Test" = {
      "alert-notification" = ["standard"],
      "auditlog"           = ["standard=1"],
      "cloud-logging"      = ["standard=1"],
      "xsuaa"              = ["application"]
    },
    "Prod" = {
      "alert-notification" = ["standard"],
      "auditlog"           = ["standard=1"],
      "cloud-logging"      = ["standard=1"],
      "xsuaa"              = ["application"]
    }
  }
}
