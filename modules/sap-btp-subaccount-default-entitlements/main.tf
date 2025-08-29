locals {
  default_entitlements = {
    "Dev" = {
      "aicore"                  = ["standard"],
      "ai-launchpad"            = ["standard"]
      "alert-notification"      = ["standard"],
      "application-logs"        = ["standard=1"],
      "build-workzone-standard" = ["standard"],
      "credstore"               = ["standard=1"],
      "jobscheduler"            = ["standard=1"],
      "hana-cloud"              = ["hana"],
      "transport"               = ["standard"],
    },
    "Test" = {
      "ai-launchpad"            = ["standard"]
      "alert-notification"      = ["standard"],
      "application-logs"        = ["standard=1"],
      "build-workzone-standard" = ["standard"],
      "credstore"               = ["standard=1"],
      "jobscheduler"            = ["standard=1"],
      "hana-cloud"              = ["hana"],
      "transport"               = ["standard"],
    },
    "Prod" = {
      "ai-launchpad"            = ["standard"]
      "alert-notification"      = ["standard"],
      "application-logs"        = ["standard=1"],
      "build-workzone-standard" = ["standard"],
      "credstore"               = ["standard=1"],
      "jobscheduler"            = ["standard=1"],
      "hana-cloud"              = ["hana"],
      "transport"               = ["standard"],
    }
  }
}
