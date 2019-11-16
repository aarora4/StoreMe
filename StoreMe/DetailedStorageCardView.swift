//
//  DetailedStorageCardView.swift
//  StoreMe
//
//  Created by Avi Arora on 11/16/19.
//  Copyright © 2019 Avi Arora. All rights reserved.
//

import UIKit

class DetailedStorageCardView: UIView {
        
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    var imageView: UIImageView!
    var titleLabel: UILabel!
    var descriptionLabel: UILabel!
    var actionButton: UIButton!
    
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
        
        self.layer.cornerRadius = 25

        self.backgroundColor = UIColor.white
//        self.layer.shadowRadius = 20
//        self.layer.shadowOffset = CGSize(width: 0, height: 10)
//        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.15
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height - 40))
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 25
        imageView.image = UIImage(named: "culcRoom2")
        imageView.contentMode = .scaleAspectFill
        
        self.addSubview(imageView)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: self.frame.height - 32, width: self.frame.width - 30, height: 30))
        titleLabel.center.x = self.frame.width / 2
        titleLabel.text = "CULC 421 • 159 sq. ft"
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.white
        
        self.addSubview(titleLabel)
        
//        descriptionLabel = UILabel(frame: CGRect(x: 0, y: self.titleLabel.frame.origin.y + self.titleLabel.frame.height + 6 , width: self.frame.width - 30, height: 25))
//        descriptionLabel.center.x = self.frame.width / 2
//        descriptionLabel.text = "a great storage space. very clean."
//        descriptionLabel.font = UIFont.systemFont(ofSize: 17, weight: .light)
//        descriptionLabel.textAlignment = .center
//        descriptionLabel.textColor = UIColor.white
        
//        self.addSubview(descriptionLabel)
        
        actionButton = UIButton(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.addSubview(actionButton)
        

        
        
        
        
        
    }
   
}
