class RackApp

  def initialize(app)
    @app = app
  end

  def call(env)
    status, header, body = @app.call(env)
    res = Rack::Response.new(body, status, header)
    res.write 'Hello, lobster!'
    res.finish
  end
end
