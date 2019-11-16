//
//  StorageOptionView.swift
//  StoreMe
//
//  Created by Avi Arora on 11/16/19.
//  Copyright © 2019 Avi Arora. All rights reserved.
//

import UIKit

class StorageOptionView: UIView {
        
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    var locationSearch: UITextField!
    var searchIcon: UIImageView!
    var cards: [DetailedStorageCardView] = []
    
    
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
        
        locationSearch = UITextField(frame: CGRect(x: 0, y: 12, width: self.frame.width - 20, height: 35))
        locationSearch.center.x = self.center.x
        locationSearch.textColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        locationSearch.textAlignment = .left
        locationSearch.attributedPlaceholder = NSAttributedString(string: "Location",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)])
        self.addSubview(locationSearch)
        
        
    }
    

   
}
