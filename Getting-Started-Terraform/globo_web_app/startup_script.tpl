#! /bin/bash
sudo amazon-linux-extras install -y nginx1
sudo service nginx start
aws s3 cp s3://${s3_bucket_name}/website/index.html /home/ec2-user/index.html
aws s3 cp s3://${s3_bucket_name}/website/Globo_logo_vert.png /home/ec2-user/Globo_logo_vert.png
sudo rm /usr/share/nginx/html/index.html
sudo cp /home/ec2-user/index.html /user/share/nginx/html/index.html
sudo cp /home/ec2-user/Globo_logo_vert.png /user/share/nginx/html/Globo_logo_vert.png
