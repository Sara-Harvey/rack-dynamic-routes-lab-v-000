class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match("/items/").last
    item_name = req.path.split("/items/").last
    item = @@items.find{|i| i.name == item_name}
    if item == nil 
      resp.write "item not found"
      resp.status = 404 
    else 
      resp.write item.price
      resp.status = 200
    end
    
  else
    

end