class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match("/items/")


      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end


#only accept this route
/items/<ITEM NAME>

else
  404
  


#if requests, return the price of that item
  
  /items/<Item Name>
  
  #IF a user requests an item that you don't have, then return a 400 and an error message
  
  resp.write song.artist
    end
 
    resp.finish
  end
end