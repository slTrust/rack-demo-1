require 'rack'
require 'webrick'

app = Rack::Builder.app do
    # 等价于 self.use
    use Rack::CommonLogger
    run -> (env){s
        [
            200,
            {'Content-Type'=> 'text/html;charset=utf-8'}, # 响应头
            ['<h1>你好2</h1>'] # 第三个参数必须是一个数组，就算你只返回一个字符串
        ]
    }
end

Rack::Handler::WEBrick.run app, {Host: '0.0.0.0',Port: 1234, AccessLog:[]} 
# AccessLog:[] 代表去掉默认的log


# 中间件  
# pipe管道模型

