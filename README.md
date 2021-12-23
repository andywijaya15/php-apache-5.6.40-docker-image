# php-apache-5.6.40-docker-image
Dockerfile to build php-5.6.40-apache image with mod_rewrite on and mysql on in docker

Download all the files and open your terminal with docker installed.
Here is the commands :
1. docker -t yourimagename .
This for build an image from dockerfile,change imagename with whatever you want
2. docker run -d --name=yourcontainername -p 81:80 -v /mnt/d/Project/web:/var/www/html yourimagename
This for make container from image that we already build with Dockerfile
-d means this Docker container will runs in the background of terminal,its not display input or output
-p 81:80 means when host/your computer access localhost:81 that will be forward to localhost:80 of your docker container,its importants,if you aren't forward your host to container then your host cant access it
-v means volume.In volume we can determine in this case where /var/www/html mount to host so we can access it from host.And because it is in host,when you delete the container,the data not deleted,so when we run another container with same folder,container can be read it again

Now access your localhost:81,you will see nothing hahaha
Now try to open your host volume that you already define,add index.php and write this :
<?php phpinfo(); ?>
save it and open localhost:81 again and you will get info about the php..
