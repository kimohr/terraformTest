terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.46.0"
    }
  }
}

provider "snowflake" {
  // required
  username = "KIMOHR"
  account  = "rw17552"
  region   = "west-europe.azure"

  // optional, at exactly one must be set
  password = "uwT6hn2c@PSoi&"

  // optional
  role = "ACCOUNTADMIN"

}

resource "snowflake_database" "test1" {
  name = "test1"
  comment = "test comment"
  data_retention_time_in_days = 1
}