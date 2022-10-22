resource "aws_s3_bucket" "s3_bucket_jumia_" {

  lifecycle_rule {
    enabled = true
  }

  object_lock_configuration {
    rule {
      default_retention {
        days = 180
      }
    }
  }

  replication_configuration {
    rules {
      source_selection_criteria {
        sse_kms_encrypted_objects {
          enabled = true
        }
      }
    }
  }

  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = true
    }
  }

  tags = {
    env      = "Test"
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }

  versioning {
    mfa_delete = true
    enabled    = true
  }
}
