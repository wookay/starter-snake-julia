# starter-snake-julia

A simple [Battlesnake AI](http://battlesnake.io) written in Julia. 

Visit [https://github.com/battlesnakeio/community/blob/master/starter-snakes.md](https://github.com/battlesnakeio/community/blob/master/starter-snakes.md) for API documentation and instructions for running your AI.


# Heroku deployment

  * Demo site: [https://bukdu-snake.herokuapp.com/](https://bukdu-snake.herokuapp.com/)

  * Heroku: Add a buildpack on **Settings** -> **Add buildpack**
    - [https://github.com/wookay/heroku-buildpack-julia-13](https://github.com/wookay/heroku-buildpack-julia-13)

```sh
~/work/starter-snake-julia $ heroku buildpacks
 ▸    heroku-cli: update available from 6.16.3-4239951 to 6.99.0-ec9edad
=== bukdu-snake Buildpack URL
https://github.com/wookay/heroku-buildpack-julia-13
```

 * More information about heroku deployment: [https://devcenter.heroku.com/categories/deployment](https://devcenter.heroku.com/categories/deployment)


# Test on local

```
$ julia package.jl
$ julia app/main.jl
Bukdu Listening on 127.0.0.1:8080
```

```
$ curl -XPOST -H 'Content-Type: application/json' localhost:8080/ping
ok
```
