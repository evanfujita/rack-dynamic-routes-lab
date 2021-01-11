class Application

    @@items = [Item.new(name, price)]
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/items/)
            item_name = req.path.split("/items/").last_response
            if item == @@items.find{|i| i.name == item_name}
            resp.write item.price
            
            else
            resp.write "Itme not found"
            resp.status = 400
            end
         else
        resp.status = 404
        resp.write "Route not found"
        end
    resp.finish
    end
end


