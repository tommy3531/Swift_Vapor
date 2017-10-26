import Vapor

extension Droplet {
    
    // This is where all the routes for the application will be placed
    func setupRoutes() throws {
        
        // closure must conform to response representable
        get { request in
            return "Hello, Vapor!"
        }
        
        // Return Json
        get("json") { request in
            
            // Can throw expection
            return try JSON(node: [
                "message": "Hello, Vapor in Json Format"
                ])
        }
        
        // user/id
        get("user", Int.parameter) { request in
            let userId = try request.parameters.next(Int.self)
            return "You requested User #\(userId)"
        }
        
        // Create a new route GET /hello
        get("hello") { req in
            
            //  Show hello, world
            var json = JSON()
            try json.set("hello", "world")
            return json
            
        }

        get("plaintext") { req in
            return "Hello, world!"
        }

        // response to requests to /info domain
        // with a description of the request
        get("info") { req in
            return req.description
        }

        get("description") { req in return req.description }
        
        try resource("posts", PostController.self)
    }
}
