//
//  RegisterView.swift
//  finalproject
//
//  Created by Bouznir on 15/02/2018.
//  Copyright © 2018 Bouznir. All rights reserved.
//

import UIKit

class RegisterView: UIView {
    
    var delegate: SignUpViewDelegate?
    
    @IBOutlet var contentView : UIView!
    
    @IBOutlet var emailLabel : UILabel!
    @IBOutlet var emailText : UITextField!
    
    @IBOutlet var passwordLabel : UILabel!
    @IBOutlet var passwordText : UITextField!
    
    @IBOutlet var confirmPasswordLabel : UILabel!
    @IBOutlet var confirmPasswordText : UITextField!
    
    @IBOutlet var notRegisterLabel : UILabel!
    
    @IBAction func registerAction() {
        delegate?.RegisterUser(name: emailText.text!, password: passwordText.text!, confirmPassword: confirmPasswordText.text!)
    }
    
    @IBAction func LoginAction() {
        
        delegate?.ShowRegisterView()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("RegisterView", owner: self, options:  nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
