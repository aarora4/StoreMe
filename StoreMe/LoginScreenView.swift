//
//  LoginScreenView.swift
//  StoreMe
//
//  Created by Avi Arora on 11/16/19.
//  Copyright © 2019 Avi Arora. All rights reserved.
//

import UIKit

class LoginScreenView: UIView {
        
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    var iconImage: UIImageView!
    var usernameField: UITextField!
    var passwordField: UITextField!
    var loginButton: LoginButton!
    var line1: UIView!
    var line2: UIView!
    var titleLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    

    func setupView() {
        
        iconImage = UIImageView(frame: CGRect(x: 0, y: 32, width: 160, height: 160))
        iconImage.center.x = self.frame.width / 2
        iconImage.image = UIImage(named: "boxNoBackground-1")
        iconImage.contentMode = .scaleAspectFit
        self.addSubview(iconImage)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: self.iconImage.frame.origin.y + self.iconImage.frame.height + 2, width: self.frame.width - 45, height: 45))
        titleLabel.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        titleLabel.text = "StoreMe"
        titleLabel.center.x = self.center.x
        titleLabel.textColor = UIColor.darkGray
        titleLabel.textAlignment = .center
        self.addSubview(titleLabel)

        
        usernameField = UITextField(frame: CGRect(x: 0, y: self.frame.height / 2 - 20, width: self.frame.width - 80, height: 40))
        usernameField.center.x = self.center.x
        usernameField.textColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        usernameField.textAlignment = .left
        usernameField.attributedPlaceholder = NSAttributedString(string: "Username",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)])
        self.addSubview(usernameField)
        
        passwordField = UITextField(frame: CGRect(x: 0, y: self.usernameField.frame.origin.y + self.usernameField.frame.height + 16, width: self.frame.width - 80, height: 40))
        passwordField.center.x = self.center.x
        passwordField.textColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        passwordField.textAlignment = .left
        passwordField.attributedPlaceholder = NSAttributedString(string: "Password",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)])
        self.addSubview(passwordField)
        
        loginButton = LoginButton(frame: CGRect(x: 0, y: self.frame.height - 52, width: self.frame.width - 40, height: 40))
        loginButton.center.x = self.frame.width / 2
        self.addSubview(loginButton)
        
        line1 = UIView(frame: CGRect(x: 0, y: self.usernameField.frame.origin.y + self.usernameField.frame.height + 4, width: self.usernameField.frame.width + 8, height: 2))
        line1.tintColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        line1.backgroundColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        line1.center.x = self.center.x
        self.addSubview(line1)
        
        line2 = UIView(frame: CGRect(x: 0, y: self.passwordField.frame.origin.y + self.passwordField.frame.height + 4, width: self.usernameField.frame.width + 8, height: 2))
        line2.tintColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        line2.backgroundColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        line2.center.x = self.center.x
        self.addSubview(line2)
        
        
        loginButton.actionButton.addTarget(self, action: #selector(goToHomeScreen), for: .touchUpInside)
        
        
        
        
        
     
    }
    
    @objc func goToHomeScreen() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "didClickLogin"), object: nil, userInfo: nil)
    }
   
}
