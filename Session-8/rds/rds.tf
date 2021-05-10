resource "aws_db_instance" "rds" {
  allocated_storage         = 10
  storage_type              = "gp2"
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  name                      = "wordpress"
  username                  = "admin"
  password                  = random_password.password.result
  identifier                = "${var.env}-rds-instance"
  skip_final_snapshot       = var.snapshot
  final_snapshot_identifier = var.snapshot == true ? null : "${var.env}-snapshot"
  vpc_security_group_ids    = [aws_security_group.rds_sg.id]
  publicly_accessible       = var.env == "dev" ? true : false
  tags = local.common_tags
  }
  resource "null_resource" "tables" {
    provisioner "local-exec" {
            command = <<EOF
      mysql -h "${aws_db_instance.rds.address}" -u "${aws_db_instance.rds.username}" < "db.sql"
      EOF
    environment = {
      MYSQL_PWD = random_password.password.result
    }
    
    }
  }

  resource "null_resource" "mysql_instalaltion" {
    provisioner "local-exec" {
            command = <<EOF
            sudo yum install mysql
            EOF
    }
  }