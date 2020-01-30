# http-file-server

[![pulls-download-size](https://images.microbadger.com/badges/image/thenetworkdoctor/nginx_http_file-server.svg)](https://microbadger.com/images/thenetworkdoctor/nginx_http_file-server "Get your own image badge on microbadger.com") [![version](https://images.microbadger.com/badges/version/thenetworkdoctor/nginx_http_file-server.svg)](https://microbadger.com/images/thenetworkdoctor/nginx_http_file-server "Get your own version badge on microbadger.com")

Simple NGINX http server for serving files from the mapped volume.

How to use ?
-----
Run the server to create the necessary folder structure and configuration files. For this example data is stored in`/path/of/host`.

```shell
sudo docker run -d \
  -p 80:8080/tcp \
  -v /path/of/host:/usr/share/nginx/html \
  --name NGINX-http-file-server 
```

For those new to Docker, here is an explanation of the options:

* `-d` - Run as a daemon ("detached").
* `-p` - Expose ports.
* `-v` - Mount `/path/of/host` on the local file system to `/usr/share/nginx/html` in the container.
* `--name` - Name the container "NGINX-http-file-server" (otherwise it has a funny random name).

<a href="http://www.wtfpl.net/"><img src="http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-4.png" width="80" height="15" alt="WTFPL" /></a>
