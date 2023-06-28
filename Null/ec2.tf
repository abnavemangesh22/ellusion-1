
resource "aws_instance" "my-demo-1" {
  ami           = data.aws_ami.myamis.id
  instance_type = "t2.micro"
  count         = 2
  key_name = aws_key_pair.my-instance-key.id
  tags = {
    "env" = "test"
    "OS"  = "amazon"
  }
  user_data = file("apache-install.sh")







  /*
provisioner "local-exec" {
  command = "echo ${aws_instance.my-demo-1.private_ip} >> ip_address.txt"
  working_dir = "timeFolder"
}

provisioner "local-exec" {
  command = "echo I am destroying the instance >> destroy_instance.txt"
  working_dir = "timeFolder"
  when = destroy
}
*/

/*
  connection {
    type        = "ssh"
    host        = self.public_ip
    private_key = tls_private_key.my-key-mangesh.private_key_pem
    user        = "ec2-user"
    password    = ""
  }


  provisioner "file" {
    source = "app.html"
    destination = "/tmp/app.html"
  }

  provisioner "remote-exec" {
    inline = [ 
        "sleep 60",
        "sudo mv /tmp/app.html /tmp/mangesh.html"
     ]
  }

  /*
  provisioner "file" {
    source = "myfolder"
    destination = "/tmp"
  }


provisioner "file" {
  source = "myansible-1.conf"
  destination = "/tmp/ansible-1.conf"
  on_failure = continue
}


  provisioner "file" {
    source = "apache-install.sh"
    destination = "/tmp/apache-install.sh"
    
    }
    */

}

resource "time_sleep" "waitfor90" {
  depends_on = [ aws_instance.my-demo-1 ]
  create_duration = "60s"
}

resource "null_resource" "mangesh-null-resource" {
  depends_on = [ time_sleep.waitfor90 ]
  triggers = {
    always-update = timestamp()
  }

connection {
    type        = "ssh"
    host        = aws_instance.my-demo-1.*.public_ip
    private_key = tls_private_key.my-key-mangesh.private_key_pem
    user        = "ec2-user"
    password    = ""
  }

  provisioner "file" {
    source = "apps/app1"
    destination = "/tmp"
  }

  provisioner "remote-exec" {
    inline = [ 

      "sudo cp -r /tmp/app1 /var/www/html"

     ]
  }

}


