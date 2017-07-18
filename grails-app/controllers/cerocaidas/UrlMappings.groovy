package cerocaidas

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"registro")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
