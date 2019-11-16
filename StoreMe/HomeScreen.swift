//
//  HomeScreen.swift
//  StoreMe
//
//  Created by Avi Arora on 11/16/19.
//  Copyright © 2019 Avi Arora. All rights reserved.
//

import UIKit

class HomeScreen: UIView, UIScrollViewDelegate {
        
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    var cards: [StorageSpaceCardView] = []
    var titleLabel: UILabel!
    var popularNearMeLabel: UILabel!
    var listButton: UIButton!
    var storeButton: UIButton!
    var horizontalScrollView: UIScrollView!
    var logoutButton: UIButton!
    var settingsButton:UIButton!
    var pageControl: UIPageControl!
    
    
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
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: 16, width: self.frame.width - 40, height: 45))
        titleLabel.text = "Home"
        titleLabel.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        titleLabel.textAlignment = .center
        titleLabel.center.x = self.center.x
        titleLabel.textColor = UIColor.darkGray
        self.addSubview(titleLabel)
        
        logoutButton = UIButton(frame: CGRect(x: self.frame.width - 30 - 12, y: 16, width: 30, height: 30))
        logoutButton.center.y = self.titleLabel.center.y
        logoutButton.setImage(UIImage(named: "logout")?.withRenderingMode(.alwaysTemplate), for: .normal)
        logoutButton.tintColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        self.addSubview(logoutButton)
        
        settingsButton = UIButton(frame: CGRect(x: 12, y: 16, width: 30, height: 30))
        settingsButton.center.y = self.titleLabel.center.y
        settingsButton.setImage(UIImage(named: "settings")?.withRenderingMode(.alwaysTemplate), for: .normal)
        settingsButton.tintColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        self.addSubview(settingsButton)
        
        popularNearMeLabel = UILabel(frame: CGRect(x: 20, y: self.titleLabel.frame.origin.y + self.titleLabel.frame.height + 45, width: self.frame.width - 20, height: 30))
//        popularNearMeLabel.center.x = self.center.x
        popularNearMeLabel.text = "Popular Near Me"
        popularNearMeLabel.font = UIFont.systemFont(ofSize: 22, weight: .light)
        popularNearMeLabel.textColor = UIColor.lightGray
        self.addSubview(popularNearMeLabel)
        
        horizontalScrollView = UIScrollView(frame: CGRect(x: 0, y: self.titleLabel.frame.origin.y + self.titleLabel.frame.height + 75, width: self.frame.width, height: self.frame.width))
        self.addSubview(horizontalScrollView)
        horizontalScrollView.contentSize = CGSize(width: self.frame.width * 5, height: self.frame.width)
        horizontalScrollView.isPagingEnabled = true
        horizontalScrollView.delegate = self
        
        
        pageControl = UIPageControl(frame: CGRect(x: 0, y: self.horizontalScrollView.frame.origin.y + self.horizontalScrollView.frame.height, width: 30, height: 20))
        self.pageControl.center.x = self.frame.width / 2
        
        pageControl.pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.7)
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = .gray
        pageControl.numberOfPages = 5
        self.addSubview(pageControl)
        
        
        
        for i in 0 ..< 5 {
            var temp = StorageSpaceCardView(frame: CGRect(x: 20 + (self.frame.width * CGFloat(i)), y: 20, width: self.frame.width - 40, height: self.frame.width - 40))
            self.cards.append(temp)
            self.horizontalScrollView.addSubview(temp)
        }
        
        listButton = UIButton(frame: CGRect(x: 0, y: self.horizontalScrollView.frame.origin.y + self.horizontalScrollView.frame.height + 80, width: 170, height: 50))
        listButton.layer.backgroundColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0).cgColor
        listButton.setTitle("List Space", for: .normal)
        listButton.setTitleColor(UIColor.white, for: .normal)
        listButton.layer.cornerRadius = 15
        listButton.clipsToBounds = true
        listButton.center.x = self.frame.width / 4
        self.addSubview(listButton)
        
        
        storeButton = UIButton(frame: CGRect(x: 0, y: self.horizontalScrollView.frame.origin.y + self.horizontalScrollView.frame.height + 80, width: 170, height: 50))
        storeButton.layer.backgroundColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0).cgColor
        storeButton.setTitle("Find Space", for: .normal)
        storeButton.setTitleColor(UIColor.white, for: .normal)
        storeButton.layer.cornerRadius = 15
        storeButton.clipsToBounds = true
        storeButton.center.x = self.frame.width * (3.0 / 4.0)
        self.addSubview(storeButton)
        

        
        
        
        
        
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (self.horizontalScrollView != nil) {
            if (self.pageControl != nil) {
                let value = horizontalScrollView.contentOffset.x / horizontalScrollView.frame.size.width
                pageControl.currentPage = Int(round(value))
            }
        }
        
        
        
    }
   
}
