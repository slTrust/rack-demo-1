require 'rack'
require 'webrick'

class X
  def call(env)
    [
      #响应
      200, # 状态码
      {
          'Content-Type'=> 'text/html;charset=utf-8'
      }, # 响应头
      ['<h1>你好</h1>'] # 第三个参数必须是一个数组，就算你只返回一个字符串
    ]
  end
end


Rack::Handler::WEBrick.run X.new, {
    Host: '0.0.0.0',
    Port: 1234
}

=begin
在 ruby里 如果最后一个东西是对象，那么这个 {}  花括号可以不打
Rack::Handler::WEBrick.run X.new, Host: '0.0.0.0',Port: 1234
=end


# class 方式调用 rack api