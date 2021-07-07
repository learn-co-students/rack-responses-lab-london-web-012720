class Application

    def call(env)

        resp = Rack::Response.new
        
        current_time = Time.now
        morning = Time.parse("00:00:00")
        afternoon = Time.parse("11:59:59")
        
        if current_time > afternoon
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end

        resp.finish

    end

end
