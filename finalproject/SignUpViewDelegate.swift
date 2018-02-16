
//
//  SignUpViewDelegate.swift
//  finalproject
//
//  Created by Bouznir on 16/02/2018.
//  Copyright © 2018 Bouznir. All rights reserved.
//

protocol SignUpViewDelegate {
    func ShowRegisterView()
    func RegisterUser(name:String,password:String, confirmPassword : String)
}
