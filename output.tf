//resource "aws_iam_service_linked_role" "iam_service_linked_role" {
//  aws_service_name = "es.amazonaws.com"
//  description = "Allows Amazon ES to manage AWS resources for a domain on your behalf."
//}

resource "aws_elasticsearch_domain" "elasticsearch_domain" {
  domain_name = var.domain_name
  elasticsearch_version = var.elasticsearch_version

  cluster_config {
    instance_type = var.instance_type
    instance_count = var.instance_count
    zone_awareness_enabled = true
    zone_awareness_config {
      availability_zone_count = var.availability_zone_count
    }
  }

  ebs_options {
    ebs_enabled = var.ebs_enabled
    volume_size = var.volume_size
    volume_type = var.volume_type
  }

  encrypt_at_rest {
    enabled = var.encrypt_at_rest
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  vpc_options {
    security_group_ids = var.security_group_ids
    subnet_ids = var.subnet_ids
  }
}

