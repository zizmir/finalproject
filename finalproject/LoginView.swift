//
//  LoginView.swift
//  finalproject
//
//  Created by Bouznir on 15/02/2018.
//  Copyright © 2018 Bouznir. All rights reserved.
//

import UIKit

class LoginView: UIView  {
    var delegate: SignInViewDelegate?
    
    @IBOutlet var contentView : UIView!
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var emailText: UITextField!
    
    @IBOutlet var passwordLabel:UILabel!
    @IBOutlet var passwordText: UITextField!
    
    @IBOutlet var notRegisterLabel : UILabel!

    @IBAction func registerAction() {
        delegate?.ShowLoginView()
    }
    
    @IBAction func LoginAction() {
        //delegate?.SignInView()
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
        Bundle.main.loadNibNamed("LoginView", owner: self, options:  nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}
