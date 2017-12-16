//
//  Boost.swift
//  Boost
//
//  Created by Ondrej Rafaj on 12/12/2017.
//

import Foundation
import Vapor
import MyBase
import MyErrors

public class Boost {
    
    public static func boot(_ app: Application) throws {
        let install = Install(app)
        install.models.append(Tag.self)
        install.models.append(App.self)
        
        install.proceed(app)
    }
    
    static var controllers: [Controller.Type] = [
        TagsController.self,
        AppsController.self
    ]
    
    public static func boot(router: Router) throws {
        try MyBase.boot(router: router)
        
        for c in controllers {
            try c.boot(router: router)
        }
    }
    
    public static func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
        var mc = MiddlewareConfig()
        mc.use(JWTTokenMiddleware.self)
        mc.use(MyErrorMiddleware.self)
        mc.use(MyDebugMiddleware.self)
        services.register(mc)
        
        let logger = PrintLogger()
        
        services.register(JWTTokenMiddleware())
        services.register(MyErrorMiddleware.init(environment: env, log: logger))
        services.register(MyDebugMiddleware())
    }
    
}
