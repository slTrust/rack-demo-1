require 'rack'
require 'webrick'

fn = ->(env){
    [
        #响应
        200, # 状态码
        {
            'Content-Type'=> 'text/html;charset=utf-8'
        }, # 响应头
        ['<h1>你好2</h1>'] # 第三个参数必须是一个数组，就算你只返回一个字符串
    ]
}

Rack::Handler::WEBrick.run fn, Host: '0.0.0.0',Port: 1234


# lambda 方式调用 rack api

