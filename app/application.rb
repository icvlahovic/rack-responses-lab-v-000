class Application
  def call(env)
    resp = Rack::Response.new
    Time.now.hour > 12 ? resp.write "Good afternoon!" : resp.write "Good morning!"
    resp.finish
  end
end
