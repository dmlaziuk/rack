require 'open3'

def request(str)
  cmd = 'nc localhost 9292'
  Open3.pipeline_w(cmd) { |stdin| stdin << str }
end

request "OPTIONS * HTTP/1.1\r\n\r\n"
request "HEAD / HTTP/1.1\r\nHost: localhost\r\nConnection: Close\r\n\r\n"
request "GET / HTTP/1.1\r\nHost: localhost\r\nConnection: Close\r\n\r\n"
request "POST / HTTP/1.1\r\nHost: localhost\r\nContent-Length: 5\r\nConnection: Close\r\n\r\nPOST\n"

