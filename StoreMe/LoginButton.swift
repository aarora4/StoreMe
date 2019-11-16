//
//  LoginButton.swift
//  StoreMe
//
//  Created by Avi Arora on 11/16/19.
//  Copyright © 2019 Avi Arora. All rights reserved.
//

import UIKit

class LoginButton: UIView {
        
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    
    var iconImage: UIImageView!
    var beginLabel: UILabel!
    var actionButton: UIButton!
    func setupView() {
        self.layer.cornerRadius = self.frame.height / 2

        self.backgroundColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        self.layer.shadowRadius = 20
        self.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.15
        
        iconImage = UIImageView(frame: CGRect(x: 30, y: 15, width: self.frame.height - 30, height: self.frame.height - 30))
        iconImage.center.y = self.frame.height / 2
        iconImage.image = UIImage(named: "logout")?.withRenderingMode(.alwaysTemplate)
        iconImage.center.x = (self.frame.width / 2) - (self.frame.height - 15)
        iconImage.tintColor = UIColor.white
        
        self.addSubview(iconImage)
        
        beginLabel = UILabel(frame: CGRect(x: self.iconImage.frame.origin.x + self.iconImage.frame.width + 10, y: 0, width: 70, height: self.frame.height - 5))
        beginLabel.center.y = self.frame.height / 2
        beginLabel.textColor = UIColor.white
        beginLabel.text = "LOGIN"
        beginLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        beginLabel.textAlignment = .left
        
        self.addSubview(beginLabel)
        
        actionButton = UIButton(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.addSubview(actionButton)
        
     
    }
   
    func setAccentColor(accent: UIColor) {
        
        iconImage.tintColor = UIColor.white
        self.backgroundColor = accent
        
    }
}

