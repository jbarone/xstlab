# XSTLAB

This lab environment was created to test and demonstrate the issues with the
HTTP TRACE method.

[Presentation Slides](TRACE.pdf)

## Dependencies

This lab is designed to use docker, so you must have docker installed.

- [ Docker for Mac ](https://docs.docker.com/docker-for-mac/)
- [ Docker for Windows ](https://docs.docker.com/docker-for-windows/)
- [ Docker Toolbox ](https://www.docker.com/products/docker-toolbox)

You may  also need some virtual environment such as VirtualBox or VMWare

This setup also needs a `.env` file to specify the setup for MYSQL. An example
configuration is provided and will work as is, just copy it to `.env` and
change the passwords to something you might prefer.

## Running

With all dependencies met, we are now ready to get it up and running.

```
$ git clone https://github.com/jbarone/xstlab.git
$ cd xstlab
$ cp env-example .env
$ docker-compose up -d --build
```

When ready to shutdown use: 

```
$ docker-compose down
```

This command stops the various docker instances, but preserves the database 
volume. To removes that, add the `-v` flag:

```
$ docker-compose down -v
```

## Playing

That's it. You are now ready to play. Just surf to
[localhost](http://127.0.0.1)

This is a direct connection to the vulnerable Apache server.

To test against a proxied server, surf to  [localhost:81](http://127.0.0.1:81)

If you are using docker-machine then you need to navigate to the ip of the vm.

```
$ open http://$(docker-machine ip default)

$ open http://$(docker-machine ip default):81
```

## TraceIt

There is an included bash script `traceit.sh` which can be modified to make
2 separate curl requests. The first will log in, the second will make a TRACE
request using the authenticated cookie.
