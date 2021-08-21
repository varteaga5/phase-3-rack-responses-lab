
# Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.

class Application
    
    def call(env)
        resp = Rack::Response.new
        
        time = Time.now.strftime("%H")
        # resp.write "#{time}"
        # If it's before noon, greet the user with "Good Morning!"
        if time < 12.to_s
            resp.write "Good Morning!"
            
        # If it's after noon, greet the user with "Good Afternoon!". 
        elsif time > 12.to_s
        resp.write "Good Afternoon!"
        end
  
        
      resp.finish
    end
  
  end
  