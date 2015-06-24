Brubeck Dockerfile
==================

Source: [https://github.com/github/brubeck](https://github.com/github/brubeck)

Hub: [dinoshauer/brubeck/](https://registry.hub.docker.com/u/dinoshauer/brubeck/)

Run with the following command in the directory where your `config.json` resides:

    docker run -it --rm -v `pwd`:/etc/brubeck dinoshauer/brubeck

Default exposed ports are (as in the [source example config](https://github.com/github/brubeck/blob/master/config.default.json.example)):

* 8080 (http)
* 8126 (statsd)
* 9126 (secure statsd)
