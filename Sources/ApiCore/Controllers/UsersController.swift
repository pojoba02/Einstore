//
//  UsersController.swift
//  ApiCore
//
//  Created by Ondrej Rafaj on 28/12/2017.
//

import Foundation
import Vapor
import FluentPostgreSQL
import MailCore


public class UsersController: Controller {
    
    public static func boot(router: Router) throws {
        router.get("users") { (req) -> Future<[User.Display]> in
            return User.query(on: req).decode(User.Display.self).all()
        }
        
        router.post("users") { (req) -> Future<Response> in
            return try req.content.decode(User.Registration.self).flatMap(to: Response.self) { user in
                let newUser = try user.newUser(on: req)
                let verification = newUser.verification!
                return try req.mail.send(from: "ondrej.rafaj@gmail.com", to: "rafaj@mangoweb.cz", subject: "polip si", text: verification).flatMap(to: Response.self) { result in
                    newUser.verification = try newUser.verification?.passwordHash(req)
                    return newUser.save(on: req).flatMap(to: Response.self) { user in
                        return try user.asDisplay().asResponse(.created, to: req)
                    }
                }
            }
        }
        
        router.get("users", "search") { (req) -> Future<[User.AllSearch]> in
            // TODO: Add proper limiter/pagination!!
            // TODO: Add the actual search!!!!!!!
            // TODO: Mask info of people from other teams!!!!
            return User.query(on: req).all().map(to: [User.AllSearch].self) { (users) -> [User.AllSearch] in
                return users.compactMap { (user) -> User.AllSearch in
                    return User.AllSearch(user: user)
                }
            }
        }
    }
    
}
