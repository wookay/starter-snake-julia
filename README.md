# starter-snake-julia

A simple [Battlesnake AI](http://battlesnake.io) written in Julia. 

Visit [https://github.com/battlesnakeio/community/blob/master/starter-snakes.md](https://github.com/battlesnakeio/community/blob/master/starter-snakes.md) for API documentation and instructions for running your AI.


# Heroku deployment

  * Demo site: [https://bukdu-snake.herokuapp.com/](https://bukdu-snake.herokuapp.com/)

```
curl -XPOST -H 'Content-Type: application/json' https://bukdu-snake.herokuapp.com/start
curl -XPOST -H 'Content-Type: application/json' -d '{ "move": "left"}' https://bukdu-snake.herokuapp.com/move
```

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

 * add [Bukdu.jl](https://github.com/wookay/Bukdu.jl)
```
~/work/starter-snake-julia $ julia package.jl
```

 * run server
```
~/work/starter-snake-julia $ julia app/main.jl
Bukdu Listening on 127.0.0.1:8080
```

 * curl
```
$ curl -XPOST -H 'Content-Type: application/json' localhost:8080/ping
ok
```
