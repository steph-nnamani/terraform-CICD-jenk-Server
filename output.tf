output "instance_ami" {
  value = aws_instance.jenkins_server.ami
}

output "instance_arn" {
  value = aws_instance.jenkins_server.arn
}

output "jenkins_server_ip" {
  value = aws_instance.jenkins_server.public_ip
}


output "jenkins_url" {
  value = join("", ["http://", aws_instance.jenkins_server.public_dns, ":", "8080"])
}
