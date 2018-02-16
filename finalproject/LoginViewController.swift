//
//  LoginViewController.swift
//  finalproject
//
//  Created by Bouznir on 15/02/2018.
//  Copyright © 2018 Bouznir. All rights reserved.
//

import UIKit
protocol SignInViewDelegate {
    func ShowLoginView()
    func ConnectUser()
}
protocol SignUpViewDelegate {
    func ShowRegisterView()
}

class LoginViewController: UIViewController , SignInViewDelegate , SignUpViewDelegate {
    
    @IBOutlet var loginView: LoginView!
    @IBOutlet var registerView: RegisterView!
    var model:User?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginView.delegate = self
        registerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func ShowLoginView() {
        loginView.isHidden = true
        registerView.isHidden = false
        
    }
    
    func ShowRegisterView() {
        loginView.isHidden = false
        registerView.isHidden = true
    }
    func ConnectUser(){
        model = User(name: "blek", password: "1234567")
    }
}
