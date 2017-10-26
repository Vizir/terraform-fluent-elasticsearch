resource "null_resource" "default" {
  provisioner "local-exec" {
    command = <<EOF
cd ${path.module} \
&& ssh ubuntu@${var.host} 'sudo apt-get update && sudo apt-get install -y python python-pip' \
&& ansible-galaxy install -r requirements.txt -p roles \
&& ansible-playbook -i ${var.host}, \
  -e 'elasticsearch_host=${var.es_host}' \
  -e 'playbook_root=${path.module}' \
  -e 'aws_region=${var.aws_region}' \
  -e 'aws_access_key_id=${var.aws_access_key_id}' \
  -e 'aws_secret_access_key=${var.aws_secret_access_key}' \
  -e 'swapfile_size=${var.swapfile_size}' \
  playbook.yml
EOF
  }
}
