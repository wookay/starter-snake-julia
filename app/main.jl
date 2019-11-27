using Bukdu

struct SnakeController <: ApplicationController
    conn::Conn
end

function index(c::SnakeController)
    @info :c c.conn.remote_ip
    render(HTML, """
    Battlesnake documentation can be found at <a href="https://docs.battlesnake.io">https://docs.battlesnake.io</a>.
    """)
end

function ping(::SnakeController)
    render(Text, "ok")
end

function start(::SnakeController)
    color = "#00FF00"
    render(JSON, (color=color,))
end

function move(c::SnakeController)
    # @info :c c.params
    directions = ["up", "down", "left", "right"]
    direction = rand(directions)
    render(JSON, (move=direction,))
end

function end_(::SnakeController)
    render(Text, "end")
end

routes() do
    get("/", SnakeController, index)
    for func in (ping, start, move)
        post(string("/", nameof(func)), SnakeController, func)
    end
    post("/end", SnakeController, end_)
    plug(Plug.Static, at="/static", from=normpath(@__DIR__, "../static"))
end

using Sockets
if haskey(ENV, "ON_HEROKU")
    Bukdu.start(parse(Int, ENV["PORT"]); host=ip"0.0.0.0")
else
    Bukdu.start(8080)
end

Base.JLOptions().isinteractive==0 && wait()
