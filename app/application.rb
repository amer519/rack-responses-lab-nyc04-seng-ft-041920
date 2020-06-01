

class Application
    def call(env)

        resp = Rack::Response.new

        the_time = Time.now

        if the_time.hour < 12
            resp.write "Good Morning!"
        elsif the_time.hour > 12
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end


