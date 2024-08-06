locals {
  files = ["ips.json", "report.csv", "sitemap.xml"]

  file_extensions = [for file in local.files : regex("\\.[0-9a-z]+$", file)]

  file_extensions_upper = {
    for file in local.file_extensions :
    file => upper(file) if file != ".json"
  }

  ips = [
    {
      public : "123.123.123.22",
      private : "123.123.123.23"
    },
    {
      public : "123.123.123.24",
      private : "123.123.123.25"
    }
  ]

}

