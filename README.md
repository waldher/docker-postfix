# Postfix for docker

This is an image for running [postfix](http://postfix.org/). This image is based on the lightweight [Alpine Linux](https://alpinelinux.org/).

## Usage

In the following example, place a `postfix.conf` file in `/etc/postfix/main.cf`, and run the container using the following:

```
docker run -v /etc/postfix:/etc/postfix -p 25:25 waldher/postfix
```
