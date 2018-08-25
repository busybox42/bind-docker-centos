[![](https://images.microbadger.com/badges/image/busybox42/bind-docker-centos.svg)](https://microbadger.com/images/busybox42/bind-docker-centos "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/busybox42/bind-docker-centos.svg)](https://microbadger.com/images/busybox42/bind-docker-centos "Get your own version badge on microbadger.com")

# bind-docker-centos
This repository contains a centos bind server.

## Downloading the image
The first step is to pull the image.
```bash
docker pull busybox42/bind-docker-centos
```

## Creating the container
Now that we have the image busybox42/bind-docker-centos we can create the container with a few parameters.
```bash
docker run --name bind -p 53:53/udp -h ns.myhostname.tld busybox42/bind-docker-centos
```
Name the container, expose udp port 53 for DNS and set a hostname.

## Configuring your server
Modify /etc/named.conf and add your zones files in /var/named/.
You can connect to the container with this command:
```bash
docker exec -it bind bash
```

Make sure you test your bind configuration before restarting the container.
```bash
named-checkconf /etc/named.conf
```
If there is no output, the configuration is considered correct and you can safely restart or reload bind configuration file.
