//
//  ViewController.swift
//  StoreMe
//
//  Created by Avi Arora on 11/16/19.
//  Copyright © 2019 Avi Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loginScreen: LoginScreenView!
    var homeScreen: HomeScreen!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(showHomeScreen),
                                                      name: NSNotification.Name(rawValue: "didClickLogin"),
                                                      object: nil)
        
        
        self.view.layer.backgroundColor = UIColor.white.cgColor
        
        loginScreen = LoginScreenView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(loginScreen)
        
    }
    
    @objc func showHomeScreen() {
        homeScreen = HomeScreen(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(homeScreen)
        loginScreen.removeFromSuperview()
    }


}

