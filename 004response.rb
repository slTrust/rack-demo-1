require 'rack'
require 'webrick'

fn = ->(env){
    response = Rack::Response.new
    response.status = 200
    response.headers['Content-Type'] = 'text/html;charset=utf-8'
    response.body = ['<h1>你好2</h1>'] 
    
    [
        response.status,
        response.headers,
        response.body
    ]
}

Rack::Handler::WEBrick.run fn, Host: '0.0.0.0',Port: 1234