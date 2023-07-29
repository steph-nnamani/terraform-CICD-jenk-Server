resource "null_resource" "name" {
  # ssh into ec2 instance

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/Downloads/newkey.pem")
    host        = aws_instance.jenkins_server.public_ip
  }

  provisioner "file" {
    source      = "install_jenkins.sh"
    destination = "/tmp/install_jenkins.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/install_jenkins.sh",
      "sudo sh /tmp/install_jenkins.sh"
    ]
  }

  depends_on = [
    aws_instance.jenkins_server
  ]
}
