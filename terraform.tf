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

//////////////////////////////////////////////////////////////////////
// Warehous
resource "snowflake_warehouse" "w" {
  name           = "test2"
  comment        = "foo"
  warehouse_size = "small"
}

// Create database
resource "snowflake_database" "simple" {
  name                        = "testing"
  comment                     = "test comment"
  data_retention_time_in_days = 1
}