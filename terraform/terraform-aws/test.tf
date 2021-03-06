provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "docker" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = "t2.small"
  count = 1
  key_name = "${aws_key_pair.ansible.key_name}"
}

resource "aws_instance" "jenkins" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = "t2.medium"
  count = 1
  key_name = "${aws_key_pair.ansible.key_name}"
}

resource "aws_instance" "gitlab" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = "t2.large"
  count = 1
  key_name = "${aws_key_pair.ansible.key_name}"
}

resource "aws_key_pair" "admin" {
  key_name = "admin-key"
  # contenu du fichier : ssh-keys/admin-user.pub
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8WwA2RnevoP7u1fWMcT0A0TZmGkcHhf6/Twh4XCrcKwwPMeukPrtUK+5ADfowBRkgk7uVlFnM9fVpumQ/0mBGDlmD+//0BT1jjqrUvcN/fuk7SjyQA2M4E3SZIQoIKRabZhlYFk9Zm7u+SuTUhuV4PfrdLd9lfLotaXuTiQSBVnQsM1CsEhGTNFxL7g1liRcZY1JNx1deMdu9gmtm6XmhvrFmhnMXJiGcpS5aKJxPHtGfhM34L6tK0Z8HgDBYWq5YV1n8wFvIamFhei0W2sx72xwrnbBoUojSkumNz3+wVWA8DsZMVzfaeJ4MpTit90PCIKZgt/UYQHGC74qF00vd ulysse@ulysse-HP-ProBook-470-G5"
}

resource "aws_key_pair" "ansible" {
  key_name = "ansible-key"
  # contenu du fichier : ssh-keys/ansible-user.pub
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMDSxNygaJRSaV6p1z6Xo2nmZnwP5l7b8oGQ2UK2BMidmepPNe4iIPkkKve/v6+8W2BXNgMnI/FBygyitljCfh5KOlMWoT+HRjMIkcnupDmOTxNtEFP6VH+fdL2XvhVuMUCoRQfTdJXIybQDxoeRomfVFhzWmu6HqqVSKCeSfRla9U84PTg7k3EAEWdapkjZLCB6YQBbtSxRbbQzt2zd8ZC8AmFepgUD7ne2h66JxC2C15cd+A44+Mlg1cgd/4tOVfofM/fNuvMiC/0SUAx902R7iojgQE+YIJwk/edub8AkLZxN3ru1zm4tshl/U2YJvKwF/kYQd6jhQPwsAqX9ij ulysse@ulysse-HP-ProBook-470-G5"
}

# resource "aws_security_group" "allow_remote_admin" {
#   name = "allow_remote_admin"
#   description = "allow ssh traffic"

#   ingress {
#     from_port = 22
#     to_port = 22
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags {
#     Name = "allow_remote_admin"
#   }
# }
