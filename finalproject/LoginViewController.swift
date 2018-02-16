//
//  LoginViewController.swift
//  finalproject
//
//  Created by Bouznir on 15/02/2018.
//  Copyright © 2018 Bouznir. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController , SignInViewDelegate , SignUpViewDelegate {
    
    @IBOutlet var loginView: LoginView!
    @IBOutlet var registerView: RegisterView!
    var model:User?
    let instance = StaticUser.instance
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
    func ConnectUser(name:String,password:String){
       if(password == self.instance.user?.password && name == self.instance.user?.name)
       {
         print("connextion réussi")
        
        }
    }
    func RegisterUser(name:String,password:String, confirmPassword : String){
        self.instance.user?.name = name
        
        guard password == confirmPassword else {
           print("Email or password invalid")
           return
        }
        print(name)
        print(password)
        print(confirmPassword)
        model = User(name: name, password: password)
        self.instance.user?.password = password
        
      
    }
}
