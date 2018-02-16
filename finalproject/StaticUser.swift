//
//  StaticUser.swift
//  finalproject
//
//  Created by Bouznir on 16/02/2018.
//  Copyright © 2018 Bouznir. All rights reserved.
//



class StaticUser {
    static let instance: StaticUser = StaticUser()
    
    var user: User? = User(name: "" , password : "")
}
